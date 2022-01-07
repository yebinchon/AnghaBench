
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ dataSocket; scalar_t__ abortTimeout; int errNo; } ;
typedef int * ResponsePtr ;
typedef TYPE_1__* FTPCIPtr ;


 int CloseDataConnection (TYPE_1__* const) ;
 int DoneWithResponse (TYPE_1__* const,int *) ;
 int Error (TYPE_1__* const,int ,char*) ;
 int FTPCmdNoResponse (TYPE_1__* const,char*) ;
 int GetResponse (TYPE_1__* const,int *) ;
 int * InitResponse () ;
 int PrintF (TYPE_1__* const,char*) ;
 int SendTelnetInterrupt (TYPE_1__* const) ;
 int SetLinger (TYPE_1__* const,scalar_t__,int ) ;
 int WaitResponse (TYPE_1__* const,unsigned int) ;
 scalar_t__ kClosedFileDescriptor ;
 int kDontPerror ;
 int kErrMallocFailed ;
 int kNoErr ;

void
FTPAbortDataTransfer(const FTPCIPtr cip)
{
 ResponsePtr rp;
 int result;

 if (cip->dataSocket != kClosedFileDescriptor) {
  PrintF(cip, "Starting abort sequence.\n");
  SendTelnetInterrupt(cip);

  result = FTPCmdNoResponse(cip, "ABOR");
  if (result != kNoErr) {

   (void) SetLinger(cip, cip->dataSocket, 0);
   CloseDataConnection(cip);
   PrintF(cip, "Could not send abort command.\n");
   return;
  }

  if (cip->abortTimeout > 0) {
   result = WaitResponse(cip, (unsigned int) cip->abortTimeout);
   if (result <= 0) {

    (void) SetLinger(cip, cip->dataSocket, 0);
    CloseDataConnection(cip);
    PrintF(cip, "No response received to abort request.\n");
    return;
   }
  }

  rp = InitResponse();
  if (rp == ((void*)0)) {
   Error(cip, kDontPerror, "Malloc failed.\n");
   cip->errNo = kErrMallocFailed;
   result = cip->errNo;
   return;
  }

  result = GetResponse(cip, rp);
  if (result < 0) {

   (void) SetLinger(cip, cip->dataSocket, 0);
   CloseDataConnection(cip);
   PrintF(cip, "Invalid response to abort request.\n");
   DoneWithResponse(cip, rp);
   return;
  }
  DoneWithResponse(cip, rp);






  (void) SetLinger(cip, cip->dataSocket, 0);
  CloseDataConnection(cip);
  PrintF(cip, "End abort.\n");
 }
}
