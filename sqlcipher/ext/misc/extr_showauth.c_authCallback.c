
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zOpSpace ;
 int SQLITE_OK ;
 int printf (char*,char const*,char const*,char const*,char const*,char const*) ;
 int sqlite3_snprintf (int,char*,char*,int) ;

__attribute__((used)) static int authCallback(
  void *pClientData,
  int op,
  const char *z1,
  const char *z2,
  const char *z3,
  const char *z4
){
  const char *zOp;
  char zOpSpace[50];
  switch( op ){
    case 157: zOp = "CREATE_INDEX"; break;
    case 156: zOp = "CREATE_TABLE"; break;
    case 155: zOp = "CREATE_TEMP_INDEX"; break;
    case 154: zOp = "CREATE_TEMP_TABLE"; break;
    case 153: zOp = "CREATE_TEMP_TRIGGER"; break;
    case 152: zOp = "CREATE_TEMP_VIEW"; break;
    case 151: zOp = "CREATE_TRIGGER"; break;
    case 150: zOp = "CREATE_VIEW"; break;
    case 148: zOp = "DELETE"; break;
    case 146: zOp = "DROP_INDEX"; break;
    case 145: zOp = "DROP_TABLE"; break;
    case 144: zOp = "DROP_TEMP_INDEX"; break;
    case 143: zOp = "DROP_TEMP_TABLE"; break;
    case 142: zOp = "DROP_TEMP_TRIGGER"; break;
    case 141: zOp = "DROP_TEMP_VIEW"; break;
    case 140: zOp = "DROP_TRIGGER"; break;
    case 139: zOp = "DROP_VIEW"; break;
    case 136: zOp = "INSERT"; break;
    case 135: zOp = "PRAGMA"; break;
    case 134: zOp = "READ"; break;
    case 130: zOp = "SELECT"; break;
    case 129: zOp = "TRANSACTION"; break;
    case 128: zOp = "UPDATE"; break;
    case 159: zOp = "ATTACH"; break;
    case 147: zOp = "DETACH"; break;
    case 161: zOp = "ALTER_TABLE"; break;
    case 132: zOp = "REINDEX"; break;
    case 160: zOp = "ANALYZE"; break;
    case 149: zOp = "CREATE_VTABLE"; break;
    case 138: zOp = "DROP_VTABLE"; break;
    case 137: zOp = "FUNCTION"; break;
    case 131: zOp = "SAVEPOINT"; break;
    case 158: zOp = "COPY"; break;
    case 133: zOp = "RECURSIVE"; break;


    default: {
      sqlite3_snprintf(sizeof(zOpSpace), zOpSpace, "%d", op);
      zOp = zOpSpace;
      break;
    }
  }
  if( z1==0 ) z1 = "NULL";
  if( z2==0 ) z2 = "NULL";
  if( z3==0 ) z3 = "NULL";
  if( z4==0 ) z4 = "NULL";
  printf("AUTH: %s,%s,%s,%s,%s\n", zOp, z1, z2, z3, z4);
  return SQLITE_OK;
}
