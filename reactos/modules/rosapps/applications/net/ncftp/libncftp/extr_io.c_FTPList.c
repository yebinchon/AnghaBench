
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int secondaryBuf ;
typedef scalar_t__ longest_int ;
typedef int line ;
struct TYPE_6__ {scalar_t__ xferTimeout; int errNo; int numListings; int bytesTransferred; int dataSocket; int magic; } ;
typedef int SReadlineInfo ;
typedef TYPE_1__* FTPCIPtr ;


 int BufferGets (char*,int,int ,char*,char**,char**,int) ;
 int DisposeSReadlineInfo (int *) ;
 int Error (TYPE_1__* const,int ,char*) ;
 int FTPEndDataCmd (TYPE_1__* const,int) ;
 int FTPStartDataCmd (TYPE_1__* const,int ,int ,scalar_t__,char*,char const*,...) ;
 scalar_t__ InitSReadlineInfo (int *,int ,char*,int,int,int) ;
 int SReadline (int *,char*,int) ;
 int STRNCAT (char*,char*) ;
 int alarm (scalar_t__) ;
 int kDoPerror ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrDataTimedOut ;
 void* kErrFdopenR ;
 int kErrGeneric ;
 void* kErrLISTFailed ;
 int kLibraryMagic ;
 int kNetReading ;
 int kNoErr ;
 int kTimeoutErr ;
 int kTypeAscii ;
 scalar_t__ strcmp (int ,int ) ;
 int strlen (char*) ;
 int write (int const,char*,int ) ;

int
FTPList(const FTPCIPtr cip, const int outfd, const int longMode, const char *const lsflag)
{
 const char *cmd;
 char line[512];
 char secondaryBuf[768];

 char *secBufPtr, *secBufLimit;
 int nread;
 volatile int result;





 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 cmd = (longMode != 0) ? "LIST" : "NLST";
 if ((lsflag == ((void*)0)) || (lsflag[0] == '\0')) {
  result = FTPStartDataCmd(cip, kNetReading, kTypeAscii, (longest_int) 0, "%s", cmd);
 } else {
  result = FTPStartDataCmd(cip, kNetReading, kTypeAscii, (longest_int) 0, "%s %s", cmd, lsflag);
 }
 if (result == 0) {




  secBufPtr = secondaryBuf + sizeof(secondaryBuf);
  secBufLimit = (char *) 0;

  for (;;) {
   if (cip->xferTimeout > 0)
    (void) alarm(cip->xferTimeout);
   nread = BufferGets(line, sizeof(line), cip->dataSocket, secondaryBuf, &secBufPtr, &secBufLimit, sizeof(secondaryBuf));
   if (nread <= 0) {
    if (nread < 0)
     break;
   } else {
    cip->bytesTransferred += (longest_int) nread;
    (void) STRNCAT(line, "\n");
    (void) write(outfd, line, strlen(line));
   }
  }
  if (cip->xferTimeout > 0)
   (void) alarm(0);
  result = FTPEndDataCmd(cip, 1);
  if (result < 0) {
   result = kErrLISTFailed;
   cip->errNo = kErrLISTFailed;
  }
  result = kNoErr;
  cip->numListings++;
 } else if (result == kErrGeneric) {
  result = kErrLISTFailed;
  cip->errNo = kErrLISTFailed;
 }

 return (result);
}
