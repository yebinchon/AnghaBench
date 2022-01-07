
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct closure {int trm; int * path; int * ctx; } ;
struct TYPE_6__ {int y; int x; } ;
typedef TYPE_1__ fz_point ;
typedef int fz_path ;
typedef int fz_context ;
struct TYPE_7__ {int y; int x; } ;
typedef TYPE_2__ FT_Vector ;


 int fz_quadto (int *,int *,int ,int ,int ,int ) ;
 TYPE_1__ fz_transform_point_xy (int ,int ,int ) ;

__attribute__((used)) static int conic_to(const FT_Vector *c, const FT_Vector *p, void *cc_)
{
 struct closure *cc = (struct closure *)cc_;
 fz_context *ctx = cc->ctx;
 fz_path *path = cc->path;
 fz_point ct, pt;

 ct = fz_transform_point_xy(c->x, c->y, cc->trm);
 pt = fz_transform_point_xy(p->x, p->y, cc->trm);

 fz_quadto(ctx, path, ct.x, ct.y, pt.x, pt.y);
 return 0;
}
