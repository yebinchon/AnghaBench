
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int TValue ;


 int cast_num (int) ;
 int lua_number2int (int,int ) ;
 scalar_t__ luai_numeq (int ,int ) ;
 int nvalue (int const*) ;
 scalar_t__ ttisnumber (int const*) ;

__attribute__((used)) static int arrayindex (const TValue *key) {
  if (ttisnumber(key)) {
    lua_Number n = nvalue(key);
    int k;
    lua_number2int(k, n);
    if (luai_numeq(cast_num(k), n))
      return k;
  }
  return -1;
}
