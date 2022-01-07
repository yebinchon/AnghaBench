
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ fz_directory ;
typedef int fz_context ;
typedef int fz_archive ;


 int fz_free (int *,int ) ;

__attribute__((used)) static void drop_directory(fz_context *ctx, fz_archive *arch)
{
 fz_directory *dir = (fz_directory *) arch;

 fz_free(ctx, dir->path);
}
