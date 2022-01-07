
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_context ;





 int SQLITE_NULL ;

 int TOTYPE_BIGENDIAN ;
 int assert (int) ;
 int memcpy (scalar_t__*,unsigned char const*,int) ;
 int sqlite3_result_int64 (int *,scalar_t__) ;
 unsigned char* sqlite3_value_blob (int *) ;
 int sqlite3_value_bytes (int *) ;
 double sqlite3_value_double (int *) ;
 scalar_t__ sqlite3_value_int64 (int *) ;
 unsigned char* sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;
 int totypeAtoi64 (char const*,scalar_t__*,int) ;
 int totypeIsspace (unsigned char const) ;

__attribute__((used)) static void tointegerFunc(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  assert( argc==1 );
  (void)argc;
  switch( sqlite3_value_type(argv[0]) ){
    case 130: {
      double rVal = sqlite3_value_double(argv[0]);
      sqlite3_int64 iVal = (sqlite3_int64)rVal;
      if( rVal==(double)iVal ){
        sqlite3_result_int64(context, iVal);
      }
      break;
    }
    case 129: {
      sqlite3_result_int64(context, sqlite3_value_int64(argv[0]));
      break;
    }
    case 131: {
      const unsigned char *zBlob = sqlite3_value_blob(argv[0]);
      if( zBlob ){
        int nBlob = sqlite3_value_bytes(argv[0]);
        if( nBlob==sizeof(sqlite3_int64) ){
          sqlite3_int64 iVal;
          if( TOTYPE_BIGENDIAN ){
            int i;
            unsigned char zBlobRev[sizeof(sqlite3_int64)];
            for(i=0; i<sizeof(sqlite3_int64); i++){
              zBlobRev[i] = zBlob[sizeof(sqlite3_int64)-1-i];
            }
            memcpy(&iVal, zBlobRev, sizeof(sqlite3_int64));
          }else{
            memcpy(&iVal, zBlob, sizeof(sqlite3_int64));
          }
          sqlite3_result_int64(context, iVal);
        }
      }
      break;
    }
    case 128: {
      const unsigned char *zStr = sqlite3_value_text(argv[0]);
      if( zStr ){
        int nStr = sqlite3_value_bytes(argv[0]);
        if( nStr && !totypeIsspace(zStr[0]) ){
          sqlite3_int64 iVal;
          if( !totypeAtoi64((const char*)zStr, &iVal, nStr) ){
            sqlite3_result_int64(context, iVal);
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
