
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sqlite3_free (void*) ;

__attribute__((used)) static void freeStringArray(int nString, const char **pString){
  int i;

  for (i=0 ; i < nString ; ++i) {
    if( pString[i]!=((void*)0) ) sqlite3_free((void *) pString[i]);
  }
  sqlite3_free((void *) pString);
}
