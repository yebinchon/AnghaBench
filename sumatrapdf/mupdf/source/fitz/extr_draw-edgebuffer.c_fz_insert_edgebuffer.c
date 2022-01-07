
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_rasterizer ;
typedef int fz_edgebuffer ;
typedef int fz_context ;
typedef int fixed ;


 int float2fixed (float) ;
 int mark_line (int *,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void fz_insert_edgebuffer(fz_context *ctx, fz_rasterizer *ras, float fsx, float fsy, float fex, float fey, int rev)
{
 fz_edgebuffer *eb = (fz_edgebuffer *)ras;
 fixed sx = float2fixed(fsx);
 fixed sy = float2fixed(fsy);
 fixed ex = float2fixed(fex);
 fixed ey = float2fixed(fey);

 mark_line(ctx, eb, sx, sy, ex, ey);
}
