
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct protoent {int p_proto; } ;
struct in_addr {int s_addr; } ;
typedef TYPE_1__* adns_state ;
struct TYPE_6__ {int iflags; scalar_t__ udpsocket; scalar_t__ diagfile; int nservers; } ;


 int ADNS_CAPTURE_ERRNO ;
 int ADNS_CLEAR_ERRNO ;
 int AF_INET ;
 int ENOPROTOOPT ;
 int INADDR_LOOPBACK ;
 int SOCK_DGRAM ;
 int WSACleanup () ;
 int addserver (TYPE_1__*,struct in_addr) ;
 int adns__setnonblock (TYPE_1__*,scalar_t__) ;
 int adns_if_debug ;
 int adns_socket_close (scalar_t__) ;
 int errno ;
 int fprintf (scalar_t__,char*) ;
 int free (TYPE_1__*) ;
 struct protoent* getprotobyname (char*) ;
 int htonl (int ) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static int init_finish(adns_state ads) {
  struct protoent *proto;
  int r;


  struct in_addr ia;
  if (!ads->nservers) {
    if (ads->diagfile && ads->iflags & adns_if_debug)
      fprintf(ads->diagfile,"adns: no nameservers, using localhost\n");
    ia.s_addr= htonl(INADDR_LOOPBACK);
    addserver(ads,ia);
  }

  proto= getprotobyname("udp"); if (!proto) { r= ENOPROTOOPT; goto x_free; }
  ADNS_CLEAR_ERRNO;
  ads->udpsocket= socket(AF_INET,SOCK_DGRAM,proto->p_proto);
  ADNS_CAPTURE_ERRNO;
  if (ads->udpsocket<0) { r= errno; goto x_free; }

  r= adns__setnonblock(ads,ads->udpsocket);
  if (r) { r= errno; goto x_closeudp; }
  return 0;

 x_closeudp:
  adns_socket_close(ads->udpsocket);
 x_free:
  free(ads);



  return r;
}
