
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * channel_hdr; int * rdp_hdr; int * sec_hdr; int * mcs_hdr; int * iso_hdr; scalar_t__ size; int * data; int * end; int * p; } ;
struct TYPE_6__ {int * channel_hdr; int * rdp_hdr; int * sec_hdr; int * mcs_hdr; int * iso_hdr; scalar_t__ size; int * data; int * end; int * p; } ;
struct TYPE_8__ {int sock; TYPE_2__ out; TYPE_1__ in; } ;
struct TYPE_9__ {TYPE_3__ tcp; } ;
typedef TYPE_4__ RDPCLIENT ;


 int free (int *) ;

void
tcp_reset_state(RDPCLIENT * This)
{
 This->tcp.sock = -1;


 if (This->tcp.in.data != ((void*)0))
  free(This->tcp.in.data);
 This->tcp.in.p = ((void*)0);
 This->tcp.in.end = ((void*)0);
 This->tcp.in.data = ((void*)0);
 This->tcp.in.size = 0;
 This->tcp.in.iso_hdr = ((void*)0);
 This->tcp.in.mcs_hdr = ((void*)0);
 This->tcp.in.sec_hdr = ((void*)0);
 This->tcp.in.rdp_hdr = ((void*)0);
 This->tcp.in.channel_hdr = ((void*)0);


 if (This->tcp.out.data != ((void*)0))
  free(This->tcp.out.data);
 This->tcp.out.p = ((void*)0);
 This->tcp.out.end = ((void*)0);
 This->tcp.out.data = ((void*)0);
 This->tcp.out.size = 0;
 This->tcp.out.iso_hdr = ((void*)0);
 This->tcp.out.mcs_hdr = ((void*)0);
 This->tcp.out.sec_hdr = ((void*)0);
 This->tcp.out.rdp_hdr = ((void*)0);
 This->tcp.out.channel_hdr = ((void*)0);
}
