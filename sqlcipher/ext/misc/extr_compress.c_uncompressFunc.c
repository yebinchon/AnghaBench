
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int Z_OK ;
 int sqlite3_free (unsigned char*) ;
 unsigned char* sqlite3_malloc (unsigned long) ;
 int sqlite3_result_blob (int *,unsigned char*,unsigned long,int (*) (unsigned char*)) ;
 unsigned char* sqlite3_value_blob (int *) ;
 unsigned int sqlite3_value_bytes (int *) ;
 int uncompress (unsigned char*,unsigned long*,unsigned char const*,unsigned int) ;

__attribute__((used)) static void uncompressFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const unsigned char *pIn;
  unsigned char *pOut;
  unsigned int nIn;
  unsigned long int nOut;
  int rc;
  int i;

  pIn = sqlite3_value_blob(argv[0]);
  nIn = sqlite3_value_bytes(argv[0]);
  nOut = 0;
  for(i=0; i<nIn && i<5; i++){
    nOut = (nOut<<7) | (pIn[i]&0x7f);
    if( (pIn[i]&0x80)!=0 ){ i++; break; }
  }
  pOut = sqlite3_malloc( nOut+1 );
  rc = uncompress(pOut, &nOut, &pIn[i], nIn-i);
  if( rc==Z_OK ){
    sqlite3_result_blob(context, pOut, nOut, sqlite3_free);
  }else{
    sqlite3_free(pOut);
  }
}
