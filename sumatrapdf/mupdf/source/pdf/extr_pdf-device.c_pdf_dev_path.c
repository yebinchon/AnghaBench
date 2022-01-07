
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_device ;
struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ gstate ;
typedef int fz_path ;
typedef int fz_context ;


 TYPE_1__* CURRENT_GSTATE (int *) ;
 int fz_walk_path (int *,int const*,int *,void*) ;
 int pdf_dev_path_proc ;

__attribute__((used)) static void
pdf_dev_path(fz_context *ctx, pdf_device *pdev, const fz_path *path)
{
 gstate *gs = CURRENT_GSTATE(pdev);

 fz_walk_path(ctx, path, &pdf_dev_path_proc, (void *)gs->buf);
}
