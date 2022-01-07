
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Integer ;
typedef int DumpState ;


 int DumpVar (int ,int *) ;

__attribute__((used)) static void DumpInteger (lua_Integer x, DumpState *D) {
  DumpVar(x, D);
}
