
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tar_entry ;
typedef int fz_tar_archive ;
typedef int fz_context ;
typedef int fz_archive ;


 int * lookup_tar_entry (int *,int *,char const*) ;

__attribute__((used)) static int has_tar_entry(fz_context *ctx, fz_archive *arch, const char *name)
{
 fz_tar_archive *tar = (fz_tar_archive *) arch;
 tar_entry *ent = lookup_tar_entry(ctx, tar, name);
 return ent != ((void*)0);
}
