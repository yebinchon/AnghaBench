
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_6__ {scalar_t__ server_public_key_len; int crypted_random; } ;
struct TYPE_7__ {TYPE_1__ secure; } ;
typedef int STREAM ;
typedef TYPE_2__ RDPCLIENT ;


 scalar_t__ SEC_CLIENT_RANDOM ;
 scalar_t__ SEC_PADDING_SIZE ;
 int out_uint32_le (int ,scalar_t__) ;
 int out_uint8p (int ,int ,scalar_t__) ;
 int out_uint8s (int ,scalar_t__) ;
 int s_mark_end (int ) ;
 int sec_init (TYPE_2__*,scalar_t__,scalar_t__) ;
 int sec_send (TYPE_2__*,int ,scalar_t__) ;

__attribute__((used)) static void
sec_establish_key(RDPCLIENT * This)
{
 uint32 length = This->secure.server_public_key_len + SEC_PADDING_SIZE;
 uint32 flags = SEC_CLIENT_RANDOM;
 STREAM s;

 s = sec_init(This, flags, length + 4);

 out_uint32_le(s, length);
 out_uint8p(s, This->secure.crypted_random, This->secure.server_public_key_len);
 out_uint8s(s, SEC_PADDING_SIZE);

 s_mark_end(s);
 sec_send(This, s, flags);
}
