
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_buffer ;


 int fz_drop_buffer (int *,int *) ;

__attribute__((used)) static void
buffer_drop(fz_context *ctx, void *opaque)
{
 fz_buffer *buffer = opaque;
 fz_drop_buffer(ctx, buffer);
}
