
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int file_write (int *,int ,void const*,size_t) ;
 int stderr ;

__attribute__((used)) static void
stderr_write(fz_context *ctx, void *opaque, const void *buffer, size_t count)
{
 file_write(ctx, stderr, buffer, count);
}
