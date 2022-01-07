
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int time_t ;
typedef int longest_int ;
struct TYPE_10__ {int magic; } ;
struct TYPE_9__ {int fsize; int ftime; } ;
typedef TYPE_1__ MLstItem ;
typedef TYPE_2__* FTPCIPtr ;


 int FTPFileModificationTime (TYPE_2__* const,char const* const,int * const) ;
 int FTPFileSize (TYPE_2__* const,char const* const,int * const,int const) ;
 int FTPMListOneFile (TYPE_2__* const,char const* const,TYPE_1__*) ;
 int FTPSetTransferType (TYPE_2__* const,int const) ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kLibraryMagic ;
 int kModTimeUnknown ;
 int kSizeUnknown ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPFileSizeAndModificationTime(const FTPCIPtr cip, const char *const file, longest_int *const size, const int type, time_t *const mdtm)
{
 MLstItem mlsInfo;
 int result;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if ((mdtm == ((void*)0)) || (size == ((void*)0)) || (file == ((void*)0)))
  return (kErrBadParameter);

 *mdtm = kModTimeUnknown;
 *size = kSizeUnknown;

 result = FTPSetTransferType(cip, type);
 if (result < 0)
  return (result);

 result = FTPMListOneFile(cip, file, &mlsInfo);
 if (result < 0) {



  result = FTPFileSize(cip, file, size, type);
  if (result < 0)
   return (result);
  result = FTPFileModificationTime(cip, file, mdtm);
  return (result);
 } else {
  *mdtm = mlsInfo.ftime;
  *size = mlsInfo.fsize;
 }

 return (result);
}
