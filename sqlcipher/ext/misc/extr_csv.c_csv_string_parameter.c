
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* zErr; } ;
typedef TYPE_1__ CsvReader ;


 int csv_dequote (char*) ;
 int csv_errmsg (TYPE_1__*,char*,...) ;
 char* csv_parameter (char const*,int,char const*) ;
 int csv_trim_whitespace (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int csv_string_parameter(
  CsvReader *p,
  const char *zParam,
  const char *zArg,
  char **pzVal
){
  const char *zValue;
  zValue = csv_parameter(zParam,(int)strlen(zParam),zArg);
  if( zValue==0 ) return 0;
  p->zErr[0] = 0;
  if( *pzVal ){
    csv_errmsg(p, "more than one '%s' parameter", zParam);
    return 1;
  }
  *pzVal = sqlite3_mprintf("%s", zValue);
  if( *pzVal==0 ){
    csv_errmsg(p, "out of memory");
    return 1;
  }
  csv_trim_whitespace(*pzVal);
  csv_dequote(*pzVal);
  return 1;
}
