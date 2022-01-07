
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_8__ {int num_channels; int width; int height; int keylayout; int keyboard_type; int keyboard_subtype; int keyboard_functionkeys; int server_depth; TYPE_2__* channel_defs; TYPE_1__* channels; scalar_t__ encryption; scalar_t__ console_session; scalar_t__ use_rdp5; } ;
struct TYPE_7__ {int options; int name; } ;
struct TYPE_6__ {int name; } ;
typedef int STREAM ;
typedef TYPE_3__ RDPCLIENT ;


 int DEBUG_RDP5 (char*) ;
 int SEC_TAG_CLI_4 ;
 int SEC_TAG_CLI_CHANNELS ;
 int SEC_TAG_CLI_CRYPT ;
 int SEC_TAG_CLI_INFO ;
 int out_uint16_be (int ,int) ;
 int out_uint16_le (int ,int) ;
 int out_uint32 (int ,int ) ;
 int out_uint32_be (int ,int ) ;
 int out_uint32_le (int ,int) ;
 int out_uint8 (int ,int) ;
 int out_uint8a (int ,int ,int) ;
 int out_uint8s (int ,int) ;
 int rdp_out_unistr (TYPE_3__*,int ,int *,int) ;
 int s_mark_end (int ) ;
 scalar_t__ wcslen (int *) ;

__attribute__((used)) static void
sec_out_mcs_data(RDPCLIENT * This, STREAM s, wchar_t * hostname)
{
 int hostlen = 2 * (int)wcslen(hostname);
 int length = 158 + 76 + 12 + 4;
 unsigned int i;

 if (This->num_channels > 0)
  length += This->num_channels * 12 + 8;

 if (hostlen > 30)
  hostlen = 30;


 out_uint16_be(s, 5);
 out_uint16_be(s, 0x14);
 out_uint8(s, 0x7c);
 out_uint16_be(s, 1);

 out_uint16_be(s, (length | 0x8000));

 out_uint16_be(s, 8);
 out_uint16_be(s, 16);
 out_uint8(s, 0);
 out_uint16_le(s, 0xc001);
 out_uint8(s, 0);

 out_uint32_le(s, 0x61637544);
 out_uint16_be(s, ((length - 14) | 0x8000));


 out_uint16_le(s, SEC_TAG_CLI_INFO);
 out_uint16_le(s, 212);
 out_uint16_le(s, This->use_rdp5 ? 4 : 1);
 out_uint16_le(s, 8);
 out_uint16_le(s, This->width);
 out_uint16_le(s, This->height);
 out_uint16_le(s, 0xca01);
 out_uint16_le(s, 0xaa03);
 out_uint32_le(s, This->keylayout);
 out_uint32_le(s, 2600);


 rdp_out_unistr(This, s, hostname, hostlen);
 out_uint8s(s, 30 - hostlen);



 out_uint32_le(s, This->keyboard_type);
 out_uint32_le(s, This->keyboard_subtype);
 out_uint32_le(s, This->keyboard_functionkeys);
 out_uint8s(s, 64);
 out_uint16_le(s, 0xca01);
 out_uint16_le(s, 1);

 out_uint32(s, 0);
 out_uint8(s, This->server_depth);
 out_uint16_le(s, 0x0700);
 out_uint8(s, 0);
 out_uint32_le(s, 1);
 out_uint8s(s, 64);

 out_uint16_le(s, SEC_TAG_CLI_4);
 out_uint16_le(s, 12);
 out_uint32_le(s, This->console_session ? 0xb : 9);
 out_uint32(s, 0);


 out_uint16_le(s, SEC_TAG_CLI_CRYPT);
 out_uint16_le(s, 12);
 out_uint32_le(s, This->encryption ? 0x3 : 0);
 out_uint32(s, 0);

 DEBUG_RDP5(("This->num_channels is %d\n", This->num_channels));
 if (This->num_channels > 0)
 {
  out_uint16_le(s, SEC_TAG_CLI_CHANNELS);
  out_uint16_le(s, This->num_channels * 12 + 8);
  out_uint32_le(s, This->num_channels);
  for (i = 0; i < This->num_channels; i++)
  {
   DEBUG_RDP5(("Requesting channel %s\n", This->channels[i].name));
   out_uint8a(s, This->channel_defs[i].name, 8);
   out_uint32_be(s, This->channel_defs[i].options);
  }
 }

 s_mark_end(s);
}
