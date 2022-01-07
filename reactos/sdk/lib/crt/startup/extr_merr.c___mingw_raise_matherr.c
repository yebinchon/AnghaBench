
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _exception {int type; char* name; double arg1; double arg2; double retval; } ;


 int stUserMathErr (struct _exception*) ;
 int stub1 (struct _exception*) ;

void __mingw_raise_matherr (int typ, const char *name, double a1, double a2,
       double rslt)
{
  struct _exception ex;
  if (!stUserMathErr)
    return;
  ex.type = typ;
  ex.name = (char*)name;
  ex.arg1 = a1;
  ex.arg2 = a2;
  ex.retval = rslt;
  (*stUserMathErr)(&ex);
}
