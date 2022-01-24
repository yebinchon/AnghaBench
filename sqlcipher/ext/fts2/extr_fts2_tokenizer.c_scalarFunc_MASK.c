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
typedef  int /*<<< orphan*/  fts2Hash ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,void*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  fts2Hash *pHash;
  void *pPtr = 0;
  const unsigned char *zName;
  int nName;

  FUNC0( argc==1 || argc==2 );

  pHash = (fts2Hash *)FUNC7(context);

  zName = FUNC10(argv[0]);
  nName = FUNC9(argv[0])+1;

  if( argc==2 ){
    void *pOld;
    int n = FUNC9(argv[1]);
    if( n!=sizeof(pPtr) ){
      FUNC6(context, "argument type mismatch", -1);
      return;
    }
    pPtr = *(void **)FUNC8(argv[1]);
    pOld = FUNC2(pHash, (void *)zName, nName, pPtr);
    if( pOld==pPtr ){
      FUNC6(context, "out of memory", -1);
      return;
    }
  }else{
    pPtr = FUNC1(pHash, zName, nName);
    if( !pPtr ){
      char *zErr = FUNC4("unknown tokenizer: %s", zName);
      FUNC6(context, zErr, -1);
      FUNC3(zErr);
      return;
    }
  }

  FUNC5(context, (void *)&pPtr, sizeof(pPtr), SQLITE_TRANSIENT);
}