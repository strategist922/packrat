\name{restore}
\alias{restore}
\title{Apply the most recent snapshot to the library}
\usage{
  restore(projDir = ".", overwriteDirty = FALSE,
    prompt = interactive())
}
\arguments{
  \item{projDir}{The directory that contains the packrat
  project.}

  \item{overwriteDirty}{A dirty package is one that has
  been changed since the last snapshot or restore. Packrat
  will leave these alone by default. If you want to
  guarantee that \code{restore} will put you in the exact
  state represented by the snapshot being applied, use
  \code{overwriteDirty = TRUE}.}

  \item{prompt}{\code{TRUE} to prompt before performing
  potentially destructive changes (package removals or
  downgrades); \code{FALSE} to perform these operations
  without confirmation.}
}
\description{
  Applies the most recent snapshot to the project's private
  library.
}
\details{
  \code{restore} works by adding, removing, and changing
  packages so that the set of installed packages and their
  versions matches the snapshot exactly.

  There are three common use cases for \code{restore}:
  \itemize{ \item \strong{Hydrate}: Use \code{restore}
  after copying a project to a new machine to populate the
  library on that machine.

  \item \strong{Sync}: Use \code{restore} to apply library
  changes made by a collaborator to your own library. (In
  general, you want to run \code{restore} whenever you pick
  up a change to \code{packrat.lock})

  \item \strong{Rollback}: Use \code{restore} to undo
  accidental changes made to the library since the last
  snapshot. }

  \code{restore} cannot make changes to packages that are
  currently loaded. If changes are necessary to currently
  loaded packages, you will need to restart R to apply the
  changes (\code{restore} will let you know when this is
  necessary). It is recommended that you do this as soon as
  possible, because any library changes made between
  running \code{restore} and restarting R will be lost.
}
\note{
  \code{restore} can be destructive; it will remove
  packages that were not in the snapshot, and it will
  replace newer packages with older versions if that's what
  the snapshot indicates. \code{restore} will warn you
  before attempting to remove or downgrade a package (if
  \code{prompt} is \code{TRUE}), but will always perform
  upgrades and new installations without prompting.

  \code{restore} works only on the private package library
  created by packrat; if you have other libraries on your
  path, they will be unaffected.
}
\seealso{
  \code{\link{snapshot}}, the command that creates the
  snapshots applied with \code{restore}.

  \code{\link{status}} to view the differences between the
  most recent snapshot and the library.
}

