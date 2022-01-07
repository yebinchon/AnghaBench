
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct closure {int trm; int * path; int * ctx; } ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_1__ fz_point ;
typedef int fz_path ;
typedef int fz_context ;
struct TYPE_8__ {int y; int x; } ;
typedef TYPE_2__ FT_Vector ;


 int fz_curveto (int *,int *,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__ fz_transform_point_xy (int ,int ,int ) ;

__attribute__((used)) static int cubic_to(const FT_Vector *c1, const FT_Vector *c2, const FT_Vector *p, void *cc_)
{
 struct closure *cc = (struct closure *)cc_;
 fz_context *ctx = cc->ctx;
 fz_path *path = cc->path;
 fz_point c1t, c2t, pt;

 c1t = fz_transform_point_xy(c1->x, c1->y, cc->trm);
 c2t = fz_transform_point_xy(c2->x, c2->y, cc->trm);
 pt = fz_transform_point_xy(p->x, p->y, cc->trm);

 fz_curveto(ctx, path, c1t.x, c1t.y, c2t.x, c2t.y, pt.x, pt.y);
 return 0;
}
