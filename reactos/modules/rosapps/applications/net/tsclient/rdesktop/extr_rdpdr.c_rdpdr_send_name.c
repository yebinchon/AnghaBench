
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char uint8 ;
typedef int uint32 ;
struct TYPE_7__ {int channel; } ;
struct TYPE_8__ {TYPE_1__ rdpdr; int * rdpdr_clientname; int * hostname; } ;
typedef int STREAM ;
typedef TYPE_2__ RDPCLIENT ;


 int channel_init (TYPE_2__*,int ,int) ;
 int channel_send (TYPE_2__*,int ,int ) ;
 int out_uint16_le (int ,int) ;
 int out_uint32 (int ,int ) ;
 int out_uint32_le (int ,int) ;
 int out_uint8a (int ,char*,int) ;
 int rdp_out_unistr (TYPE_2__*,int ,int *,int) ;
 int s_mark_end (int ) ;
 int strlen (int *) ;

__attribute__((used)) static void
rdpdr_send_name(RDPCLIENT * This)
{
 uint8 magic[4] = "rDNC";
 STREAM s;
 uint32 hostlen;

 if (((void*)0) == This->rdpdr_clientname)
 {
  This->rdpdr_clientname = This->hostname;
 }
 hostlen = (strlen(This->rdpdr_clientname) + 1) * 2;

 s = channel_init(This, This->rdpdr.channel, 16 + hostlen);
 out_uint8a(s, magic, 4);
 out_uint16_le(s, 0x63);
 out_uint16_le(s, 0x72);
 out_uint32(s, 0);
 out_uint32_le(s, hostlen);
 rdp_out_unistr(This, s, This->rdpdr_clientname, hostlen - 2);
 s_mark_end(s);
 channel_send(This, s, This->rdpdr.channel);
}
