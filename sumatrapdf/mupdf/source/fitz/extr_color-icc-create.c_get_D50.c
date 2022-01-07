
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int icS15Fixed16Number ;
typedef int fz_context ;


 int D50_X ;
 int D50_Y ;
 int D50_Z ;
 int double2XYZtype (int *,int ) ;

__attribute__((used)) static void
get_D50(fz_context *ctx, icS15Fixed16Number XYZ[])
{
 XYZ[0] = double2XYZtype(ctx, D50_X);
 XYZ[1] = double2XYZtype(ctx, D50_Y);
 XYZ[2] = double2XYZtype(ctx, D50_Z);
}
