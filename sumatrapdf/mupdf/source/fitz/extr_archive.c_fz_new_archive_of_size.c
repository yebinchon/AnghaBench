
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_stream ;
typedef int fz_context ;
struct TYPE_4__ {int file; } ;
typedef TYPE_1__ fz_archive ;


 TYPE_1__* Memento_label (int ,char*) ;
 int fz_calloc (int *,int,int) ;
 int fz_keep_stream (int *,int *) ;

fz_archive *
fz_new_archive_of_size(fz_context *ctx, fz_stream *file, int size)
{
 fz_archive *arch;
 arch = Memento_label(fz_calloc(ctx, 1, size), "fz_archive");
 arch->file = fz_keep_stream(ctx, file);
 return arch;
}
