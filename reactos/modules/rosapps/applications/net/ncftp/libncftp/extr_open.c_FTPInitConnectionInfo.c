
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t bufSize; int user; int magic; int * startingWorkingDirectory; int firewallType; void* NLSTfileParamWorks; void* STATfileParamWorks; void* hasSBUFSZ; void* hasSBUFSIZ; void* hasSTORBUFSIZE; void* hasRBUFSZ; void* hasRBUFSIZ; void* hasRETRBUFSIZE; void* hasCLNT; void* hasMLST; void* hasMLSD; void* hasFEAT; void* hasUTIME; void* hasNLST_d; void* hasREST; void* hasMDTM; void* hasSIZE; void* hasPASV; TYPE_1__* lip; void* dataSocket; int dataPortMode; void* ctrlSocketW; void* ctrlSocketR; int abortTimeout; int ctrlTimeout; int connTimeout; int xferTimeout; int redialDelay; int maxDials; int firewallPort; int port; int * buf; } ;
struct TYPE_6__ {int defaultPort; int magic; } ;
typedef TYPE_1__* FTPLIPtr ;
typedef int FTPConnectionInfo ;
typedef TYPE_2__* FTPCIPtr ;


 int STRNCPY (int ,char*) ;
 void* kClosedFileDescriptor ;
 void* kCommandAvailabilityUnknown ;
 int kDefaultAbortTimeout ;
 int kDefaultConnTimeout ;
 int kDefaultCtrlTimeout ;
 int kDefaultMaxDials ;
 int kDefaultRedialDelay ;
 int kDefaultXferTimeout ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kFirewallNotInUse ;
 char* kLibraryMagic ;
 int kNoErr ;
 int kSendPortMode ;
 int memset (TYPE_2__* const,int ,size_t) ;
 scalar_t__ strcmp (int ,char*) ;

int
FTPInitConnectionInfo(const FTPLIPtr lip, const FTPCIPtr cip, size_t bufSize)
{
 size_t siz;

 if ((lip == ((void*)0)) || (cip == ((void*)0)) || (bufSize == 0))
  return (kErrBadParameter);

 siz = sizeof(FTPConnectionInfo);
 (void) memset(cip, 0, siz);

 if (strcmp(lip->magic, kLibraryMagic))
  return (kErrBadMagic);

 cip->buf = ((void*)0);
 cip->bufSize = bufSize;
 cip->port = lip->defaultPort;
 cip->firewallPort = lip->defaultPort;
 cip->maxDials = kDefaultMaxDials;
 cip->redialDelay = kDefaultRedialDelay;
 cip->xferTimeout = kDefaultXferTimeout;
 cip->connTimeout = kDefaultConnTimeout;
 cip->ctrlTimeout = kDefaultCtrlTimeout;
 cip->abortTimeout = kDefaultAbortTimeout;
 cip->ctrlSocketR = kClosedFileDescriptor;
 cip->ctrlSocketW = kClosedFileDescriptor;
 cip->dataPortMode = kSendPortMode;
 cip->dataSocket = kClosedFileDescriptor;
 cip->lip = lip;
 cip->hasPASV = kCommandAvailabilityUnknown;
 cip->hasSIZE = kCommandAvailabilityUnknown;
 cip->hasMDTM = kCommandAvailabilityUnknown;
 cip->hasREST = kCommandAvailabilityUnknown;
 cip->hasNLST_d = kCommandAvailabilityUnknown;
 cip->hasUTIME = kCommandAvailabilityUnknown;
 cip->hasFEAT = kCommandAvailabilityUnknown;
 cip->hasMLSD = kCommandAvailabilityUnknown;
 cip->hasMLST = kCommandAvailabilityUnknown;
 cip->hasCLNT = kCommandAvailabilityUnknown;
 cip->hasRETRBUFSIZE = kCommandAvailabilityUnknown;
 cip->hasRBUFSIZ = kCommandAvailabilityUnknown;
 cip->hasRBUFSZ = kCommandAvailabilityUnknown;
 cip->hasSTORBUFSIZE = kCommandAvailabilityUnknown;
 cip->hasSBUFSIZ = kCommandAvailabilityUnknown;
 cip->hasSBUFSZ = kCommandAvailabilityUnknown;
 cip->STATfileParamWorks = kCommandAvailabilityUnknown;
 cip->NLSTfileParamWorks = kCommandAvailabilityUnknown;
 cip->firewallType = kFirewallNotInUse;
 cip->startingWorkingDirectory = ((void*)0);
 (void) STRNCPY(cip->magic, kLibraryMagic);
 (void) STRNCPY(cip->user, "anonymous");
 return (kNoErr);
}
