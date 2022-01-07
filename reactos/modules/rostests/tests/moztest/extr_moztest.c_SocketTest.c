
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int selfAddr ;
struct TYPE_5__ {int wVersion; } ;
typedef TYPE_2__ WSADATA ;
typedef int WORD ;
typedef scalar_t__ SOCKET ;


 int AF_INET ;
 int DBG (char*) ;
 int HIBYTE (int ) ;
 int INADDR_LOOPBACK ;
 scalar_t__ INVALID_SOCKET ;
 int LOBYTE (int ) ;
 int MAKEWORD (int,int) ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_STREAM ;
 int WSACleanup () ;
 int WSAStartup (int ,TYPE_2__*) ;
 scalar_t__ accept (scalar_t__,struct sockaddr*,int*) ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 int closesocket (scalar_t__) ;
 scalar_t__ connect (scalar_t__,struct sockaddr*,int) ;
 scalar_t__ getsockname (scalar_t__,struct sockaddr*,int*) ;
 void* htonl (int ) ;
 scalar_t__ listen (scalar_t__,int) ;
 scalar_t__ socket (int ,int ,int ) ;

int SocketTest()
{
   SOCKET listenSock;
   SOCKET osfd[2];
   struct sockaddr_in selfAddr, peerAddr;
   int addrLen;
   WORD wVersionRequested;
   WSADATA wsaData;
   int err;





   wVersionRequested = MAKEWORD( 2, 2 );

   DBG("Calling WSAStartup\n");
   err = WSAStartup( wVersionRequested, &wsaData );
   if ( err != 0 ) {


       DBG("WSAStartup failed\n");
       return 1;
   }







   if ( LOBYTE( wsaData.wVersion ) != 2 ||
           HIBYTE( wsaData.wVersion ) != 2 ) {


       DBG("WSAStartup version unacceptable\n");
       WSACleanup( );
       return 1;
   }



   DBG("Calling socket\n");
   osfd[0] = osfd[1] = INVALID_SOCKET;
   listenSock = socket(AF_INET, SOCK_STREAM, 0);
   if (listenSock == INVALID_SOCKET) {
       DBG("socket failed\n");
       goto failed;
   }

   selfAddr.sin_family = AF_INET;
   selfAddr.sin_port = 0;
   selfAddr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
   addrLen = sizeof(selfAddr);
   DBG("Calling bind\n");
   if (bind(listenSock, (struct sockaddr *) &selfAddr,
           addrLen) == SOCKET_ERROR) {
       DBG("bind failed\n");
       goto failed;
   }

   DBG("Calling getsockname\n");
   if (getsockname(listenSock, (struct sockaddr *) &selfAddr,
           &addrLen) == SOCKET_ERROR) {
       DBG("getsockname failed\n");
       goto failed;
   }

   DBG("Calling listen\n");
   if (listen(listenSock, 5) == SOCKET_ERROR) {
       DBG("listen failed\n");
       goto failed;
   }

   DBG("Calling socket\n");
   osfd[0] = socket(AF_INET, SOCK_STREAM, 0);
   if (osfd[0] == INVALID_SOCKET) {
       DBG("socket failed\n");
       goto failed;
   }
   selfAddr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
   DBG("Calling connect\n");
   if (connect(osfd[0], (struct sockaddr *) &selfAddr,
           addrLen) == SOCKET_ERROR) {
       DBG("connect failed\n");
       goto failed;
   }






   DBG("Calling getsockname\n");
   if (getsockname(osfd[0], (struct sockaddr *) &selfAddr,
           &addrLen) == SOCKET_ERROR) {
       DBG("getsockname failed\n");
       goto failed;
   }

   DBG("Calling accept\n");
   osfd[1] = accept(listenSock, (struct sockaddr *) &peerAddr, &addrLen);
   if (osfd[1] == INVALID_SOCKET) {
       DBG("accept failed\n");
       goto failed;
   }
   if (peerAddr.sin_port != selfAddr.sin_port) {

       DBG("peerAddr.sin_port != selfAddr.sin_port\n");
       goto failed;
   }

   DBG("Hurray!\n");

   closesocket(listenSock);

   closesocket(osfd[0]);
   closesocket(osfd[1]);

   WSACleanup();

   return 0;

failed:
   if (listenSock != INVALID_SOCKET) {
       closesocket(listenSock);
   }
   if (osfd[0] != INVALID_SOCKET) {
       closesocket(osfd[0]);
   }
   if (osfd[1] != INVALID_SOCKET) {
       closesocket(osfd[1]);
   }

   WSACleanup();

   return 1;
}
