
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int as_stream; int tell; int seek; } ;
typedef TYPE_1__ fz_output ;
typedef int fz_context ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int FZ_ERROR_GENERIC ;
 int _IONBF ;
 scalar_t__ errno ;
 int file_as_stream ;
 int * file_drop ;
 int file_seek ;
 int file_tell ;
 int file_write ;
 int * fopen (char const*,char*) ;
 int * fz_fopen_utf8 (char const*,char*) ;
 TYPE_1__* fz_new_output (int *,int,int *,int ,int *,int *) ;
 scalar_t__ fz_remove_utf8 (char const*) ;
 int fz_strcasecmp (char const*,char*) ;
 int fz_throw (int *,int ,char*,char const*,int ) ;
 int null_write ;
 scalar_t__ remove (char const*) ;
 int setvbuf (int *,int *,int ,int ) ;
 int strcmp (char const*,char*) ;
 int strerror (scalar_t__) ;

fz_output *
fz_new_output_with_path(fz_context *ctx, const char *filename, int append)
{
 FILE *file;
 fz_output *out;

 if (!strcmp(filename, "/dev/null") || !fz_strcasecmp(filename, "nul:"))
  return fz_new_output(ctx, 0, ((void*)0), null_write, ((void*)0), ((void*)0));
 if (!append)
 {
  if (remove(filename) < 0)
   if (errno != ENOENT)
    fz_throw(ctx, FZ_ERROR_GENERIC, "cannot remove file '%s': %s", filename, strerror(errno));
 }
 file = fopen(filename, append ? "rb+" : "wb+");

 if (!file)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot open file '%s': %s", filename, strerror(errno));

 setvbuf(file, ((void*)0), _IONBF, 0);
 out = fz_new_output(ctx, 8192, file, file_write, ((void*)0), file_drop);
 out->seek = file_seek;
 out->tell = file_tell;
 out->as_stream = file_as_stream;

 return out;
}
