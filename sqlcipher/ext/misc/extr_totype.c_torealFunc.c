
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_context ;





 int SQLITE_NULL ;

 int TOTYPE_LITTLEENDIAN ;
 int assert (int) ;
 int memcpy (double*,unsigned char const*,int) ;
 int sqlite3_result_double (int *,double) ;
 unsigned char* sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 double sqlite3_value_double (int *) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 unsigned char* sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;
 int totypeAtoF (char const*,double*,int) ;
 int totypeIsspace (unsigned char const) ;

__attribute__((used)) static void torealFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  assert( argc==1 );
  (void)argc;
  switch( sqlite3_value_type(argv[0]) ){
    case 130: {
      sqlite3_result_double(context, sqlite3_value_double(argv[0]));
      break;
    }
    case 129: {
      sqlite3_int64 iVal = sqlite3_value_int64(argv[0]);
      double rVal = (double)iVal;
      if( iVal==(sqlite3_int64)rVal ){
        sqlite3_result_double(context, rVal);
      }
      break;
    }
    case 131: {
      const unsigned char *zBlob = sqlite3_value_blob(argv[0]);
      if( zBlob ){
        int nBlob = sqlite3_value_bytes(argv[0]);
        if( nBlob==sizeof(double) ){
          double rVal;
          if( TOTYPE_LITTLEENDIAN ){
            int i;
            unsigned char zBlobRev[sizeof(double)];
            for(i=0; i<sizeof(double); i++){
              zBlobRev[i] = zBlob[sizeof(double)-1-i];
            }
            memcpy(&rVal, zBlobRev, sizeof(double));
          }else{
            memcpy(&rVal, zBlob, sizeof(double));
          }
          sqlite3_result_double(context, rVal);
        }
      }
      break;
    }
    case 128: {
      const unsigned char *zStr = sqlite3_value_text(argv[0]);
      if( zStr ){
        int nStr = sqlite3_value_bytes(argv[0]);
        if( nStr && !totypeIsspace(zStr[0]) && !totypeIsspace(zStr[nStr-1]) ){
          double rVal;
          if( totypeAtoF((const char*)zStr, &rVal, nStr) ){
            sqlite3_result_double(context, rVal);
            return;
          }
        }
      }
      break;
    }
    default: {
      assert( sqlite3_value_type(argv[0])==SQLITE_NULL );
      break;
    }
  }
}
