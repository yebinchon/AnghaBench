
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int cTValue ;
typedef int TValue ;


 scalar_t__ intV (int *) ;
 scalar_t__ lj_strscan_num (int ,int *) ;
 int * setnumV (int *,int ) ;
 int strV (int *) ;
 scalar_t__ tvisint (int *) ;
 scalar_t__ tvisnum (int *) ;
 scalar_t__ tvisstr (int *) ;

__attribute__((used)) static cTValue *str2num(cTValue *o, TValue *n)
{
  if (tvisnum(o))
    return o;
  else if (tvisint(o))
    return (setnumV(n, (lua_Number)intV(o)), n);
  else if (tvisstr(o) && lj_strscan_num(strV(o), n))
    return n;
  else
    return ((void*)0);
}
