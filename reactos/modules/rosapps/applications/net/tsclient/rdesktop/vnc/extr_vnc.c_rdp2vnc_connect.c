
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint32 ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr {int dummy; } ;
typedef int fd_set ;
typedef int addr ;
typedef int BOOL ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ accept (int,struct sockaddr*,int*) ;
 int errno ;
 int error (char*,...) ;
 int exit (int ) ;
 int fork () ;
 int fprintf (int ,char*,int) ;
 int printf (char*) ;
 int rdp_connect (char*,int ,char*,char*,char*,char*) ;
 int rdp_disconnect () ;
 int rdp_main_loop (int *,int *) ;
 scalar_t__ rfbClientSocket ;
 int rfbListenOnTCPPort (int) ;
 int rfb_port ;
 scalar_t__ select (int,int *,int *,int *,struct timeval*) ;
 int stderr ;
 char* strerror (int ) ;
 int ui_create_window () ;
 int ui_destroy_window () ;

void
rdp2vnc_connect(char *server, uint32 flags, char *domain, char *password,
  char *shell, char *directory)
{
 struct sockaddr addr;
 fd_set fdset;
 struct timeval tv;
 int rfbListenSock, addrlen = sizeof(addr);

 rfbListenSock = rfbListenOnTCPPort(rfb_port);
 fprintf(stderr, "Listening on VNC port %d\n", rfb_port);
 if (rfbListenSock <= 0)
  error("Cannot listen on port %d", rfb_port);
 else
  while (1)
  {
   FD_ZERO(&fdset);
   FD_SET(rfbListenSock, &fdset);
   tv.tv_sec = 5;
   tv.tv_usec = 0;
   if (select(rfbListenSock + 1, &fdset, ((void*)0), ((void*)0), &tv) > 0)
   {
    rfbClientSocket = accept(rfbListenSock, &addr, &addrlen);
    if (rfbClientSocket < 0)
    {
     error("Error accepting client (%d: %s.\n",
           errno, strerror(errno));
     continue;
    }
    ui_create_window();
    if (!rdp_connect(server, flags, domain, password, shell, directory))
    {
     error("Error connecting to RDP server.\n");
     continue;
    }
    if (!fork())
    {
     BOOL deactivated;
     uint32_t ext_disc_reason;
     printf("Connection successful.\n");
     rdp_main_loop(&deactivated, &ext_disc_reason);
     printf("Disconnecting...\n");
     rdp_disconnect();
     ui_destroy_window();
     exit(0);
    }
   }
  }
}
