
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_stream ;
typedef int fz_context ;
typedef int FILE ;


 int FZ_ERROR_GENERIC ;
 int errno ;
 int * fopen (char const*,char*) ;
 int * fz_fopen_utf8 (char const*,char*) ;
 int * fz_open_file_ptr (int *,int *) ;
 int fz_throw (int *,int ,char*,char const*,int ) ;
 int strerror (int ) ;

fz_stream *
fz_open_file(fz_context *ctx, const char *name)
{
 FILE *file;



 file = fopen(name, "rb");

 if (file == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot open %s: %s", name, strerror(errno));
 return fz_open_file_ptr(ctx, file);
}
