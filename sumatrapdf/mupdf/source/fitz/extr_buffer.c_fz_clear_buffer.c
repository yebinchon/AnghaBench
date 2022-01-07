
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {scalar_t__ len; } ;
typedef TYPE_1__ fz_buffer ;



void
fz_clear_buffer(fz_context *ctx, fz_buffer *buf)
{
 buf->len = 0;
}
