
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;


 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static const char *fts5ValueToText(sqlite3_value *pVal){
  const char *zRet = (const char*)sqlite3_value_text(pVal);
  return zRet ? zRet : "";
}
