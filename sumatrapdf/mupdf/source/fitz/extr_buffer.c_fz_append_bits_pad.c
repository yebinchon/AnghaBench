
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {scalar_t__ unused_bits; } ;
typedef TYPE_1__ fz_buffer ;



void
fz_append_bits_pad(fz_context *ctx, fz_buffer *buf)
{
 buf->unused_bits = 0;
}
