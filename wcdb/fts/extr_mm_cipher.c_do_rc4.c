
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; } ;
typedef TYPE_1__ mm_cipher_context_t ;
typedef int RC4_KEY ;


 int RC4 (int *,size_t,unsigned char const*,unsigned char*) ;
 int RC4_set_key (int *,int,int ) ;

__attribute__((used)) static void do_rc4(mm_cipher_context_t *ctx, void *buf, int buf_len)
{
    RC4_KEY rc4_key;

    RC4_set_key(&rc4_key, 16, ctx->key);
    RC4(&rc4_key, (size_t) buf_len, (const unsigned char *) buf,
        (unsigned char *) buf);
}
