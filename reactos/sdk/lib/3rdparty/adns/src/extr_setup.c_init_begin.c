
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* adns_state ;
typedef int adns_initflags ;
struct TYPE_7__ {int wVersion; } ;
typedef TYPE_2__ WSADATA ;
typedef int WORD ;
struct TYPE_6__ {int iflags; int nextid; int udpsocket; int tcpsocket; int searchndots; int * diagfile; scalar_t__ searchlist; int tcptimeout; int tcpstate; scalar_t__ tcpserver; scalar_t__ nsearchlist; scalar_t__ nsortlist; scalar_t__ nservers; scalar_t__ tcprecv_skip; int tcprecv; int tcpsend; scalar_t__ forallnext; int output; int childw; int tcpw; int udpw; scalar_t__ configerrno; } ;
typedef int FILE ;


 scalar_t__ HIBYTE (int ) ;
 int LIST_INIT (int ) ;
 int LOBYTE (int ) ;
 int MAKEWORD (int,int ) ;
 int WSACleanup () ;
 int WSAStartup (int ,TYPE_2__*) ;
 int adns__vbuf_init (int *) ;
 int adns_if_debug ;
 int errno ;
 int fprintf (int *,char*) ;
 TYPE_1__* malloc (int) ;
 int server_disconnected ;
 int timerclear (int *) ;

__attribute__((used)) static int init_begin(adns_state *ads_r, adns_initflags flags, FILE *diagfile) {
  adns_state ads;







  ads= malloc(sizeof(*ads)); if (!ads) return errno;

  ads->iflags= flags;
  ads->diagfile= diagfile;
  ads->configerrno= 0;
  LIST_INIT(ads->udpw);
  LIST_INIT(ads->tcpw);
  LIST_INIT(ads->childw);
  LIST_INIT(ads->output);
  ads->forallnext= 0;
  ads->nextid= 0x311f;
  ads->udpsocket= ads->tcpsocket= -1;
  adns__vbuf_init(&ads->tcpsend);
  adns__vbuf_init(&ads->tcprecv);
  ads->tcprecv_skip= 0;
  ads->nservers= ads->nsortlist= ads->nsearchlist= ads->tcpserver= 0;
  ads->searchndots= 1;
  ads->tcpstate= server_disconnected;
  timerclear(&ads->tcptimeout);
  ads->searchlist= 0;
  *ads_r= ads;

  return 0;
}
