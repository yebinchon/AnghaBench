
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_entry ;
typedef int fz_zip_archive ;
typedef int fz_context ;
typedef int fz_archive ;


 int * lookup_zip_entry (int *,int *,char const*) ;

__attribute__((used)) static int has_zip_entry(fz_context *ctx, fz_archive *arch, const char *name)
{
 fz_zip_archive *zip = (fz_zip_archive *) arch;
 zip_entry *ent = lookup_zip_entry(ctx, zip, name);
 return ent != ((void*)0);
}
