
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int lua_Integer ;
typedef int Instruction ;
typedef int DumpState ;


 int DumpByte (int,int *) ;
 int DumpInteger (int ,int *) ;
 int DumpLiteral (int ,int *) ;
 int DumpNumber (int ,int *) ;
 int LUAC_DATA ;
 int LUAC_FORMAT ;
 int LUAC_INT ;
 int LUAC_NUM ;
 int LUAC_VERSION ;
 int LUA_SIGNATURE ;

__attribute__((used)) static void DumpHeader (DumpState *D) {
  DumpLiteral(LUA_SIGNATURE, D);
  DumpByte(LUAC_VERSION, D);
  DumpByte(LUAC_FORMAT, D);
  DumpLiteral(LUAC_DATA, D);
  DumpByte(sizeof(int), D);

  DumpByte(sizeof(size_t), D);

  DumpByte(sizeof(Instruction), D);
  DumpByte(sizeof(lua_Integer), D);
  DumpByte(sizeof(lua_Number), D);
  DumpInteger(LUAC_INT, D);
  DumpNumber(LUAC_NUM, D);
}
