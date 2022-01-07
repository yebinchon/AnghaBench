
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite3_value ;
struct TYPE_6__ {int bErr; int pCtx; } ;
typedef TYPE_1__ JsonString ;


 int JSON_SUBTYPE ;




 int jsonAppendRaw (TYPE_1__*,char const*,int) ;
 int jsonAppendString (TYPE_1__*,char const*,int) ;
 int jsonReset (TYPE_1__*) ;
 int sqlite3_result_error (int ,char*,int) ;
 int sqlite3_value_bytes (int *) ;
 int sqlite3_value_subtype (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;

__attribute__((used)) static void jsonAppendValue(
  JsonString *p,
  sqlite3_value *pValue
){
  switch( sqlite3_value_type(pValue) ){
    case 129: {
      jsonAppendRaw(p, "null", 4);
      break;
    }
    case 130:
    case 131: {
      const char *z = (const char*)sqlite3_value_text(pValue);
      u32 n = (u32)sqlite3_value_bytes(pValue);
      jsonAppendRaw(p, z, n);
      break;
    }
    case 128: {
      const char *z = (const char*)sqlite3_value_text(pValue);
      u32 n = (u32)sqlite3_value_bytes(pValue);
      if( sqlite3_value_subtype(pValue)==JSON_SUBTYPE ){
        jsonAppendRaw(p, z, n);
      }else{
        jsonAppendString(p, z, n);
      }
      break;
    }
    default: {
      if( p->bErr==0 ){
        sqlite3_result_error(p->pCtx, "JSON cannot hold BLOB values", -1);
        p->bErr = 2;
        jsonReset(p);
      }
      break;
    }
  }
}
