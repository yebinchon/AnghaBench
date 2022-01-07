
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CmdLineOption ;


 int option_requires_argument_error (int *) ;
 scalar_t__ sqlite3_stricmp (char const*,char*) ;

__attribute__((used)) static int get_boolean_option(CmdLineOption *pOpt, const char *zArg){
  if( 0==sqlite3_stricmp(zArg, "true") ) return 1;
  if( 0==sqlite3_stricmp(zArg, "1") ) return 1;
  if( 0==sqlite3_stricmp(zArg, "0") ) return 0;
  if( 0==sqlite3_stricmp(zArg, "false") ) return 0;
  option_requires_argument_error(pOpt);
  return 0;
}
