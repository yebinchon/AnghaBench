
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lua_Number ;


 scalar_t__ lj_num2int (scalar_t__) ;

__attribute__((used)) static int numisint(lua_Number n)
{
  return (n == (lua_Number)lj_num2int(n));
}
