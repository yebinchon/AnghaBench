
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TValue ;
typedef int ExpDesc ;


 int * expr_numtv (int *) ;
 scalar_t__ intV (int *) ;
 scalar_t__ tvisint (int *) ;
 int tviszero (int *) ;

__attribute__((used)) static int expr_numiszero(ExpDesc *e)
{
  TValue *o = expr_numtv(e);
  return tvisint(o) ? (intV(o) == 0) : tviszero(o);
}
