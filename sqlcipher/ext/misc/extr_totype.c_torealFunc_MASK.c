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
 int /*<<< orphan*/  TOTYPE_LITTLEENDIAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (double*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 double FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,double*,int) ; 
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
      FUNC2(context, FUNC5(argv[0]));
      break;
    }
    case SQLITE_INTEGER: {
      sqlite3_int64 iVal = FUNC6(argv[0]);
      double rVal = (double)iVal;
      if( iVal==(sqlite3_int64)rVal ){
        FUNC2(context, rVal);
      }
      break;
    }
    case SQLITE_BLOB: {
      const unsigned char *zBlob = FUNC3(argv[0]);
      if( zBlob ){
        int nBlob = FUNC4(argv[0]);
        if( nBlob==sizeof(double) ){
          double rVal;
          if( TOTYPE_LITTLEENDIAN ){
            int i;
            unsigned char zBlobRev[sizeof(double)];
            for(i=0; i<sizeof(double); i++){
              zBlobRev[i] = zBlob[sizeof(double)-1-i];
            }
            FUNC1(&rVal, zBlobRev, sizeof(double));
          }else{
            FUNC1(&rVal, zBlob, sizeof(double));
          }
          FUNC2(context, rVal);
        }
      }
      break;
    }
    case SQLITE_TEXT: {
      const unsigned char *zStr = FUNC7(argv[0]);
      if( zStr ){
        int nStr = FUNC4(argv[0]);
        if( nStr && !FUNC10(zStr[0]) && !FUNC10(zStr[nStr-1]) ){
          double rVal;
          if( FUNC9((const char*)zStr, &rVal, nStr) ){
            FUNC2(context, rVal);
            return;
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