
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int icS15Fixed16Number ;
typedef int fz_context ;


 int double2XYZtype (int *,float) ;

__attribute__((used)) static void
get_XYZ_doubletr(fz_context *ctx, icS15Fixed16Number XYZ[], float vector[])
{
 XYZ[0] = double2XYZtype(ctx, vector[0]);
 XYZ[1] = double2XYZtype(ctx, vector[1]);
 XYZ[2] = double2XYZtype(ctx, vector[2]);
}
