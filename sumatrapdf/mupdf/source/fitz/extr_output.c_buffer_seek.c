
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int errno ;
 int fz_throw (int *,int ,char*,int ) ;
 int strerror (int ) ;

__attribute__((used)) static void
buffer_seek(fz_context *ctx, void *opaque, int64_t off, int whence)
{
 fz_throw(ctx, FZ_ERROR_GENERIC, "cannot seek in buffer: %s", strerror(errno));
}
