
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; scalar_t__ offset; } ;
typedef TYPE_2__ tar_entry ;
struct TYPE_6__ {int * file; } ;
struct TYPE_8__ {TYPE_1__ super; } ;
typedef TYPE_3__ fz_tar_archive ;
typedef int fz_stream ;
typedef int fz_context ;
typedef int fz_archive ;


 int FZ_ERROR_GENERIC ;
 int * fz_open_null_filter (int *,int *,int ,int ) ;
 int fz_seek (int *,int *,scalar_t__,int ) ;
 int fz_tell (int *,int *) ;
 int fz_throw (int *,int ,char*) ;
 TYPE_2__* lookup_tar_entry (int *,TYPE_3__*,char const*) ;

__attribute__((used)) static fz_stream *open_tar_entry(fz_context *ctx, fz_archive *arch, const char *name)
{
 fz_tar_archive *tar = (fz_tar_archive *) arch;
 fz_stream *file = tar->super.file;
 tar_entry *ent;

 ent = lookup_tar_entry(ctx, tar, name);
 if (!ent)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find named tar archive entry");

 fz_seek(ctx, file, ent->offset + 512, 0);
 return fz_open_null_filter(ctx, file, ent->size, fz_tell(ctx, file));
}
