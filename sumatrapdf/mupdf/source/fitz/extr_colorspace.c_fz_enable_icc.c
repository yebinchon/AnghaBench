
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_warn (int *,char*) ;

void fz_enable_icc(fz_context *ctx)
{
 fz_warn(ctx, "ICC support is not available");
}
