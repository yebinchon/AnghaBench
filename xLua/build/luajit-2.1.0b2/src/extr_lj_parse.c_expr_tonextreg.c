
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ freereg; } ;
typedef TYPE_1__ FuncState ;
typedef int ExpDesc ;


 int bcreg_reserve (TYPE_1__*,int) ;
 int expr_discharge (TYPE_1__*,int *) ;
 int expr_free (TYPE_1__*,int *) ;
 int expr_toreg (TYPE_1__*,int *,scalar_t__) ;

__attribute__((used)) static void expr_tonextreg(FuncState *fs, ExpDesc *e)
{
  expr_discharge(fs, e);
  expr_free(fs, e);
  bcreg_reserve(fs, 1);
  expr_toreg(fs, e, fs->freereg - 1);
}
