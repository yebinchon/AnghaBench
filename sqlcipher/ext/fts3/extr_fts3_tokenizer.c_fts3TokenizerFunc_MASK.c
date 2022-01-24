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
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  pPtr ;
typedef  int /*<<< orphan*/  Fts3Hash ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,void*,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  Fts3Hash *pHash;
  void *pPtr = 0;
  const unsigned char *zName;
  int nName;

  FUNC0( argc==1 || argc==2 );

  pHash = (Fts3Hash *)FUNC8(context);

  zName = FUNC12(argv[0]);
  nName = FUNC10(argv[0])+1;

  if( argc==2 ){
    if( FUNC1(context) || FUNC11(argv[1]) ){
      void *pOld;
      int n = FUNC10(argv[1]);
      if( zName==0 || n!=sizeof(pPtr) ){
        FUNC7(context, "argument type mismatch", -1);
        return;
      }
      pPtr = *(void **)FUNC9(argv[1]);
      pOld = FUNC3(pHash, (void *)zName, nName, pPtr);
      if( pOld==pPtr ){
        FUNC7(context, "out of memory", -1);
      }
    }else{
      FUNC7(context, "fts3tokenize disabled", -1);
      return;
    }
  }else{
    if( zName ){
      pPtr = FUNC2(pHash, zName, nName);
    }
    if( !pPtr ){
      char *zErr = FUNC5("unknown tokenizer: %s", zName);
      FUNC7(context, zErr, -1);
      FUNC4(zErr);
      return;
    }
  }
  if( FUNC1(context) || FUNC11(argv[0]) ){
    FUNC6(context, (void *)&pPtr, sizeof(pPtr), SQLITE_TRANSIENT);
  }
}