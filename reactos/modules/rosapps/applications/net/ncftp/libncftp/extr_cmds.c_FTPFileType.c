
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int errNo; char const* const buf; int bufSize; int magic; } ;
struct TYPE_9__ {int ftype; } ;
typedef TYPE_1__ MLstItem ;
typedef TYPE_2__* FTPCIPtr ;


 int FTPChdir (TYPE_2__* const,char const* const) ;
 int FTPFileExists2 (TYPE_2__* const,char const* const,int,int,int ,int,int) ;
 int FTPGetCWD (TYPE_2__* const,char const* const,int ) ;
 int FTPMListOneFile (TYPE_2__* const,char const* const,TYPE_1__*) ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrFileExistsButCannotDetermineType ;
 int kErrNoSuchFileOrDirectory ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPFileType(const FTPCIPtr cip, const char *const file, int *const ftype)
{
 int result;
 MLstItem mlsInfo;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if ((file == ((void*)0)) || (file[0] == '\0')) {
  cip->errNo = kErrBadParameter;
  return (kErrBadParameter);
 }

 if (ftype == ((void*)0)) {
  cip->errNo = kErrBadParameter;
  return (kErrBadParameter);
 }

 *ftype = 0;
 result = FTPMListOneFile(cip, file, &mlsInfo);
 if (result == kNoErr) {
  *ftype = mlsInfo.ftype;
  return (kNoErr);
 }


 (void) FTPGetCWD(cip, cip->buf, cip->bufSize);

 result = FTPChdir(cip, file);
 if (result == kNoErr) {
  *ftype = 'd';



  (void) FTPChdir(cip, cip->buf);





  return (kNoErr);
 }

 result = FTPFileExists2(cip, file, 1, 1, 0, 1, 1);
 if (result != kErrNoSuchFileOrDirectory)
  result = kErrFileExistsButCannotDetermineType;

 return (result);
}
