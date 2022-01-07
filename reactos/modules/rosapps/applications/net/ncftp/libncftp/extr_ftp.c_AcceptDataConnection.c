
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_13__ {TYPE_1__ sin_addr; int sin_port; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_11__ {TYPE_2__ sin_addr; int sin_port; } ;
struct TYPE_12__ {scalar_t__ dataPortMode; int dataSocket; scalar_t__ connTimeout; int errNo; scalar_t__ require20; TYPE_3__ servCtlAddr; TYPE_5__ servDataAddr; } ;
typedef TYPE_4__* FTPCIPtr ;


 int Error (TYPE_4__* const,int ,char*) ;
 int SAccept (int,TYPE_5__*,int) ;
 int accept (int,struct sockaddr*,int*) ;
 int alarm (scalar_t__) ;
 int closesocket (int) ;
 void* kClosedFileDescriptor ;
 int kDoPerror ;
 int kDontPerror ;
 int kErrAcceptDataSocket ;
 scalar_t__ kSendPortMode ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memset (TYPE_5__*,int ,int) ;
 unsigned short ntohs (int ) ;

int
AcceptDataConnection(const FTPCIPtr cip)
{
 int newSocket;

 int len;

 unsigned short remoteDataPort;
 unsigned short remoteCtrlPort;




 if (cip->dataPortMode == kSendPortMode) {



  memset(&cip->servDataAddr, 0, sizeof(cip->servDataAddr));




  len = (int) sizeof(cip->servDataAddr);
  if (cip->connTimeout > 0)
   (void) alarm(cip->connTimeout);
  newSocket = accept(cip->dataSocket, (struct sockaddr *) &cip->servDataAddr, &len);
  if (cip->connTimeout > 0)
   (void) alarm(0);


  (void) closesocket(cip->dataSocket);
  if (newSocket < 0) {
   Error(cip, kDoPerror, "Could not accept a data connection.\n");
   cip->dataSocket = kClosedFileDescriptor;
   cip->errNo = kErrAcceptDataSocket;
   return (kErrAcceptDataSocket);
  }

  if (cip->require20 != 0) {
   remoteDataPort = ntohs(cip->servDataAddr.sin_port);
   remoteCtrlPort = ntohs(cip->servCtlAddr.sin_port);
   if ((int) remoteDataPort != ((int) remoteCtrlPort - 1)) {
    Error(cip, kDontPerror, "Data connection did not originate on correct port!\n");
    (void) closesocket(newSocket);
    cip->dataSocket = kClosedFileDescriptor;
    cip->errNo = kErrAcceptDataSocket;
    return (kErrAcceptDataSocket);
   } else if (memcmp(&cip->servDataAddr.sin_addr.s_addr, &cip->servCtlAddr.sin_addr.s_addr, sizeof(cip->servDataAddr.sin_addr.s_addr)) != 0) {
    Error(cip, kDontPerror, "Data connection did not originate from remote server!\n");
    (void) closesocket(newSocket);
    cip->dataSocket = kClosedFileDescriptor;
    cip->errNo = kErrAcceptDataSocket;
    return (kErrAcceptDataSocket);
   }
  }

  cip->dataSocket = newSocket;
 }

 return (0);
}
