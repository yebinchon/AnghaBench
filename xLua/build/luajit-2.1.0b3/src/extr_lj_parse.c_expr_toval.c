
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncState ;
typedef int ExpDesc ;


 int expr_discharge (int *,int *) ;
 scalar_t__ expr_hasjump (int *) ;
 int expr_toanyreg (int *,int *) ;

__attribute__((used)) static void expr_toval(FuncState *fs, ExpDesc *e)
{
  if (expr_hasjump(e))
    expr_toanyreg(fs, e);
  else
    expr_discharge(fs, e);
}
