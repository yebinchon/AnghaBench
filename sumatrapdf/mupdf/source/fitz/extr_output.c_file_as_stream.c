
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;
typedef int FILE ;


 int fflush (int *) ;
 int * fz_open_file_ptr_no_close (int *,int *) ;

__attribute__((used)) static fz_stream *
file_as_stream(fz_context *ctx, void *opaque)
{
 FILE *file = opaque;
 fflush(file);
 return fz_open_file_ptr_no_close(ctx, file);
}
