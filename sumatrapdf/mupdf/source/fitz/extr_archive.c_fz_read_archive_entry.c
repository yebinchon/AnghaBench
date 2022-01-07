
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
typedef int fz_buffer ;
struct TYPE_4__ {int * (* read_entry ) (int *,TYPE_1__*,char const*) ;} ;
typedef TYPE_1__ fz_archive ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int * stub1 (int *,TYPE_1__*,char const*) ;

fz_buffer *
fz_read_archive_entry(fz_context *ctx, fz_archive *arch, const char *name)
{
 if (!arch->read_entry)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot read archive entry");
 return arch->read_entry(ctx, arch, name);
}
