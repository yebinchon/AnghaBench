#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
#define  SQLITE_BLOB 131 
#define  SQLITE_FLOAT 130 
#define  SQLITE_INTEGER 129 
 int SQLITE_NULL ; 
#define  SQLITE_TEXT 128 
 int /*<<< orphan*/  TOTYPE_BIGENDIAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char const) ; 

__attribute__((used)) static void FUNC11(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  FUNC0( argc==1 );
  (void)argc;
  switch( FUNC8(argv[0]) ){
    case SQLITE_FLOAT: {
      double rVal = FUNC5(argv[0]);
      sqlite3_int64 iVal = (sqlite3_int64)rVal;
      if( rVal==(double)iVal ){
        FUNC2(context, iVal);
      }
      break;
    }
    case SQLITE_INTEGER: {
      FUNC2(context, FUNC6(argv[0]));
      break;
    }
    case SQLITE_BLOB: {
      const unsigned char *zBlob = FUNC3(argv[0]);
      if( zBlob ){
        int nBlob = FUNC4(argv[0]);
        if( nBlob==sizeof(sqlite3_int64) ){
          sqlite3_int64 iVal;
          if( TOTYPE_BIGENDIAN ){
            int i;
            unsigned char zBlobRev[sizeof(sqlite3_int64)];
            for(i=0; i<sizeof(sqlite3_int64); i++){
              zBlobRev[i] = zBlob[sizeof(sqlite3_int64)-1-i];
            }
            FUNC1(&iVal, zBlobRev, sizeof(sqlite3_int64));
          }else{
            FUNC1(&iVal, zBlob, sizeof(sqlite3_int64));
          }
          FUNC2(context, iVal);
        }
      }
      break;
    }
    case SQLITE_TEXT: {
      const unsigned char *zStr = FUNC7(argv[0]);
      if( zStr ){
        int nStr = FUNC4(argv[0]);
        if( nStr && !FUNC10(zStr[0]) ){
          sqlite3_int64 iVal;
          if( !FUNC9((const char*)zStr, &iVal, nStr) ){
            FUNC2(context, iVal);
          }
        }
      }
      break;
    }
    default: {
      FUNC0( FUNC8(argv[0])==SQLITE_NULL );
      break;
    }
  }
}