
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct closure {int trm; int * path; int * ctx; } ;
struct TYPE_5__ {int y; int x; } ;
typedef TYPE_1__ fz_point ;
typedef int fz_path ;
typedef int fz_context ;
struct TYPE_6__ {int y; int x; } ;
typedef TYPE_2__ FT_Vector ;


 int fz_moveto (int *,int *,int ,int ) ;
 TYPE_1__ fz_transform_point_xy (int ,int ,int ) ;

__attribute__((used)) static int move_to(const FT_Vector *p, void *cc_)
{
 struct closure *cc = (struct closure *)cc_;
 fz_context *ctx = cc->ctx;
 fz_path *path = cc->path;
 fz_point pt;

 pt = fz_transform_point_xy(p->x, p->y, cc->trm);
 fz_moveto(ctx, path, pt.x, pt.y);
 return 0;
}
