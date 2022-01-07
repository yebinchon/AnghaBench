
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
typedef int fz_context ;
struct TYPE_2__ {int len; } ;
typedef TYPE_1__ fz_buffer ;



__attribute__((used)) static int64_t
buffer_tell(fz_context *ctx, void *opaque)
{
 fz_buffer *buffer = opaque;
 return (int64_t)buffer->len;
}
