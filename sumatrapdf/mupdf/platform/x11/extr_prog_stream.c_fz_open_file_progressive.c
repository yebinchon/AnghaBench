
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;
typedef int FILE ;


 int FZ_ERROR_GENERIC ;
 int * fopen (char const*,char*) ;
 int * fz_fopen_utf8 (char const*,char*) ;
 int * fz_open_file_ptr_progressive (int *,int *,int,void (*) (void*,int),void*) ;
 int fz_throw (int *,int ,char*,char const*) ;

fz_stream *
fz_open_file_progressive(fz_context *ctx, const char *name, int kbps, void (*on_data)(void*,int), void *opaque)
{
 FILE *f;



 f = fopen(name, "rb");

 if (f == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot open %s", name);
 return fz_open_file_ptr_progressive(ctx, f, kbps, on_data, opaque);
}
