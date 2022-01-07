
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_md5 ;
typedef int fz_context ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ fz_buffer ;


 int fz_md5_final (int *,unsigned char*) ;
 int fz_md5_init (int *) ;
 int fz_md5_update (int *,int ,int ) ;

void
fz_md5_buffer(fz_context *ctx, fz_buffer *buffer, unsigned char digest[16])
{
 fz_md5 state;
 fz_md5_init(&state);
 if (buffer)
  fz_md5_update(&state, buffer->data, buffer->len);
 fz_md5_final(&state, digest);
}
