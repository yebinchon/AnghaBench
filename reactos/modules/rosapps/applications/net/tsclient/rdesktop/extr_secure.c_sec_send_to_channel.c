
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_11__ {int rc4_key_len; int sign_key; } ;
struct TYPE_13__ {TYPE_1__ secure; int licence_issued; } ;
struct TYPE_12__ {int end; int p; } ;
typedef TYPE_2__* STREAM ;
typedef TYPE_3__ RDPCLIENT ;
typedef int BOOL ;


 int DEBUG (char*) ;
 int SEC_ENCRYPT ;
 int hexdump (int,int) ;
 int mcs_send_to_channel (TYPE_3__*,TYPE_2__*,int ) ;
 int out_uint32_le (TYPE_2__*,int) ;
 int s_pop_layer (TYPE_2__*,int ) ;
 int sec_encrypt (TYPE_3__*,int,int) ;
 int sec_hdr ;
 int sec_sign (int,int,int ,int ,int,int) ;

BOOL
sec_send_to_channel(RDPCLIENT * This, STREAM s, uint32 flags, uint16 channel)
{
 int datalen;

 s_pop_layer(s, sec_hdr);
 if (!This->licence_issued || (flags & SEC_ENCRYPT))
  out_uint32_le(s, flags);

 if (flags & SEC_ENCRYPT)
 {
  flags &= ~SEC_ENCRYPT;
  datalen = (int)(s->end - s->p - 8);






  sec_sign(s->p, 8, This->secure.sign_key, This->secure.rc4_key_len, s->p + 8, datalen);
  sec_encrypt(This, s->p + 8, datalen);
 }

 return mcs_send_to_channel(This, s, channel);
}
