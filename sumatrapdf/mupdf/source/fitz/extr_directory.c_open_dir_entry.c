
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_stream ;
struct TYPE_2__ {int path; } ;
typedef TYPE_1__ fz_directory ;
typedef int fz_context ;
typedef int fz_archive ;


 int * fz_open_file (int *,char*) ;
 int fz_strlcat (char*,char const*,int) ;
 int fz_strlcpy (char*,int ,int) ;

__attribute__((used)) static fz_stream *open_dir_entry(fz_context *ctx, fz_archive *arch, const char *name)
{
 fz_directory *dir = (fz_directory *) arch;
 char path[2048];
 fz_strlcpy(path, dir->path, sizeof path);
 fz_strlcat(path, "/", sizeof path);
 fz_strlcat(path, name, sizeof path);
 return fz_open_file(ctx, path);
}
