
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_Number ;
struct TYPE_2__ {int len; } ;
typedef int const TValue ;


 scalar_t__ luaO_str2d (int ,int ,int *) ;
 int setnvalue (int const*,int ) ;
 int svalue (int const*) ;
 TYPE_1__* tsvalue (int const*) ;
 scalar_t__ ttisnumber (int const*) ;
 scalar_t__ ttisstring (int const*) ;

const TValue *luaV_tonumber (const TValue *obj, TValue *n) {
  lua_Number num;
  if (ttisnumber(obj)) return obj;
  if (ttisstring(obj) && luaO_str2d(svalue(obj), tsvalue(obj)->len, &num)) {
    setnvalue(n, num);
    return n;
  }
  else
    return ((void*)0);
}
