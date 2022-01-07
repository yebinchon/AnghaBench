
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_5__* adns_state ;
struct TYPE_13__ {scalar_t__ head; } ;
struct TYPE_12__ {scalar_t__ head; } ;
struct TYPE_11__ {scalar_t__ head; } ;
struct TYPE_10__ {scalar_t__ head; } ;
struct TYPE_14__ {int udpsocket; int tcpsocket; int tcprecv; int tcpsend; TYPE_4__ output; TYPE_3__ childw; TYPE_2__ tcpw; TYPE_1__ udpw; } ;


 int WSACleanup () ;
 int adns__consistency (TYPE_5__*,int ,int ) ;
 int adns__vbuf_free (int *) ;
 int adns_cancel (scalar_t__) ;
 int adns_socket_close (int) ;
 int cc_entex ;
 int free (TYPE_5__*) ;
 int freesearchlist (TYPE_5__*) ;

void adns_finish(adns_state ads) {
  adns__consistency(ads,0,cc_entex);
  for (;;) {
    if (ads->udpw.head) adns_cancel(ads->udpw.head);
    else if (ads->tcpw.head) adns_cancel(ads->tcpw.head);
    else if (ads->childw.head) adns_cancel(ads->childw.head);
    else if (ads->output.head) adns_cancel(ads->output.head);
    else break;
  }
  adns_socket_close(ads->udpsocket);
  if (ads->tcpsocket != -1) adns_socket_close(ads->tcpsocket);
  adns__vbuf_free(&ads->tcpsend);
  adns__vbuf_free(&ads->tcprecv);
  freesearchlist(ads);
  free(ads);




}
