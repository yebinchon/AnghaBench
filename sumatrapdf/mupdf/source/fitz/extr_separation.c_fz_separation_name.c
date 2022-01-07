
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_separations; char const** name; } ;
typedef TYPE_1__ fz_separations ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;

const char *fz_separation_name(fz_context *ctx, const fz_separations *sep, int separation)
{
 if (!sep || separation < 0 || separation >= sep->num_separations)
  fz_throw(ctx, FZ_ERROR_GENERIC, "can't access non-existent separation");

 return sep->name[separation];
}
