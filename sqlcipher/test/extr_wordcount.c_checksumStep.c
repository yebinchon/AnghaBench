
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int addCharToHash (unsigned int*,unsigned char const) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void checksumStep(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *zVal;
  int nVal, i, j;
  unsigned int *a;
  a = (unsigned*)sqlite3_aggregate_context(context, sizeof(unsigned int)*5);

  if( a ){
    for(i=0; i<argc; i++){
      nVal = sqlite3_value_bytes(argv[i]);
      zVal = (const unsigned char*)sqlite3_value_text(argv[i]);
      if( zVal ) for(j=0; j<nVal; j++) addCharToHash(a, zVal[j]);
      addCharToHash(a, '|');
    }
    addCharToHash(a, '\n');
  }
}
