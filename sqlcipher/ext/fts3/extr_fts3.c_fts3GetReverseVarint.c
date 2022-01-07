
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_int64 ;


 int sqlite3Fts3GetVarint (char*,int *) ;

__attribute__((used)) static void fts3GetReverseVarint(
  char **pp,
  char *pStart,
  sqlite3_int64 *pVal
){
  sqlite3_int64 iVal;
  char *p;




  for(p = (*pp)-2; p>=pStart && *p&0x80; p--);
  p++;
  *pp = p;

  sqlite3Fts3GetVarint(p, &iVal);
  *pVal = iVal;
}
