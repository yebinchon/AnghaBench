
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Integer ;
typedef int TValue ;
 int nvalue (int *) ;
 int tointeger (int *,int *) ;

__attribute__((used)) static int validop (int op, TValue *v1, TValue *v2) {
  switch (op) {
    case 136: case 134: case 133:
    case 129: case 128: case 135: {
      lua_Integer i;
      return (tointeger(v1, &i) && tointeger(v2, &i));
    }
    case 132: case 131: case 130:
      return (nvalue(v2) != 0);
    default: return 1;
  }
}
