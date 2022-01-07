
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tell; int seek; } ;
typedef TYPE_1__ fz_output ;
typedef int fz_context ;
typedef int fz_buffer ;


 int buffer_drop ;
 int buffer_seek ;
 int buffer_tell ;
 int buffer_write ;
 int fz_keep_buffer (int *,int *) ;
 TYPE_1__* fz_new_output (int *,int ,int ,int ,int *,int ) ;

fz_output *
fz_new_output_with_buffer(fz_context *ctx, fz_buffer *buf)
{
 fz_output *out = fz_new_output(ctx, 0, fz_keep_buffer(ctx, buf), buffer_write, ((void*)0), buffer_drop);
 out->seek = buffer_seek;
 out->tell = buffer_tell;
 return out;
}
