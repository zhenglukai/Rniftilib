\name{nifti.image.read}
\alias{nifti.image.read}
\title{Read data from NIfTI (Analyze) files}
\description{
  This function reads the meta and image data from a nifti file.
}
\usage{
nifti.image.read(file, read_data=1, rm.NaN=TRUE) 
}
\arguments{
  \item{file}{name of the nifti file}
  \item{read_data}{0=do not read image data, 1=read image data}
  \item{rm.NaN}{logical value indicating whether NA and NaN values should be stripped (default in niftilib C library)}
}
\details{
If \code{read_data=0} only the header info is loaded.  
}
\value{
\code{\link{nifti}} object
}
\references{
  \url{http://nifti.nimh.nih.gov}
  \url{http://niftilib.sourceforge.net}
}
\author{
  Oliver Granert <o.granert <at> neurologie.uni-kiel.de>
}

\seealso{ 
  \code{\link{nifti.image.write}},
  \code{\link{nifti.image.new}}
}
\examples{
\dontrun{
nim <- nifti.image.read(file.choose())
# access to attributes...
nim$qto.xyz        # voxel to mm transformation matrix (q-form)
nim$qto.ijk        # mm to voxel transformation matrix (q-form)
nim$sto.xyz        # voxel to mm transformation matrix (s-form)
nim$sto.ijk        # mm to voxel transformation matrix (s-form)
nim$toffset        #
nim$descrip        # description
nim$fname          # header filename (store image information)
nim$iname          # image filename (store image data)
nim$slice.duration
# access to voxel values...
nim[10,11,12]      # voxel value at x=10, y=11, z=12
}
}
\keyword{IO}
