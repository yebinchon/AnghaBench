
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int time_t ;
typedef int longest_int ;
struct TYPE_8__ {int errNo; } ;
typedef int MLstItem ;
typedef TYPE_1__* FTPCIPtr ;


 int FTPFileExistsNlst (TYPE_1__* const,char const* const) ;
 int FTPFileExistsStat (TYPE_1__* const,char const* const) ;
 int FTPFileModificationTime (TYPE_1__* const,char const* const,int *) ;
 int FTPFileSize (TYPE_1__* const,char const* const,int *,int ) ;
 int FTPMListOneFile (TYPE_1__* const,char const* const,int *) ;
 int kErrCantTellIfFileExists ;
 int kErrMDTMFailed ;
 int kErrMLSTFailed ;
 int kErrNLSTFailed ;
 int kErrNoSuchFileOrDirectory ;
 int kErrSTATFailed ;
 int kNoErr ;
 int kTypeBinary ;

int
FTPFileExists2(const FTPCIPtr cip, const char *const file, const int tryMDTM, const int trySIZE, const int tryMLST, const int trySTAT, const int tryNLST)
{
 int result;
 time_t mdtm;
 longest_int size;
 MLstItem mlsInfo;

 if (tryMDTM != 0) {
  result = FTPFileModificationTime(cip, file, &mdtm);
  if (result == kNoErr)
   return (kNoErr);
  if (result == kErrMDTMFailed) {
   cip->errNo = kErrNoSuchFileOrDirectory;
   return (kErrNoSuchFileOrDirectory);
  }

 }

 if (trySIZE != 0) {
  result = FTPFileSize(cip, file, &size, kTypeBinary);
  if (result == kNoErr)
   return (kNoErr);







 }


 if (tryMLST != 0) {
  result = FTPMListOneFile(cip, file, &mlsInfo);
  if (result == kNoErr)
   return (kNoErr);
  if (result == kErrMLSTFailed) {
   cip->errNo = kErrNoSuchFileOrDirectory;
   return (kErrNoSuchFileOrDirectory);
  }

 }

 if (trySTAT != 0) {
  result = FTPFileExistsStat(cip, file);
  if (result == kNoErr)
   return (kNoErr);
  if (result == kErrSTATFailed) {
   cip->errNo = kErrNoSuchFileOrDirectory;
   return (kErrNoSuchFileOrDirectory);
  }

 }

 if (tryNLST != 0) {
  result = FTPFileExistsNlst(cip, file);
  if (result == kNoErr)
   return (kNoErr);
  if (result == kErrNLSTFailed) {
   cip->errNo = kErrNoSuchFileOrDirectory;
   return (kErrNoSuchFileOrDirectory);
  }

 }

 cip->errNo = kErrCantTellIfFileExists;
 return (kErrCantTellIfFileExists);
}
