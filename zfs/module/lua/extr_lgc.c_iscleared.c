
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int global_State ;
typedef int TValue ;


 int gcvalue (int const*) ;
 int iscollectable (int const*) ;
 int iswhite (int ) ;
 int markobject (int *,int ) ;
 int rawtsvalue (int const*) ;
 scalar_t__ ttisstring (int const*) ;

__attribute__((used)) static int iscleared (global_State *g, const TValue *o) {
  if (!iscollectable(o)) return 0;
  else if (ttisstring(o)) {
    markobject(g, rawtsvalue(o));
    return 0;
  }
  else return iswhite(gcvalue(o));
}
