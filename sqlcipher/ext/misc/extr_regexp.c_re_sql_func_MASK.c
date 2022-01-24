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
typedef  int /*<<< orphan*/  ReCompiled ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void (*) (void*)) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(
  sqlite3_context *context, 
  int argc, 
  sqlite3_value **argv
){
  ReCompiled *pRe;          /* Compiled regular expression */
  const char *zPattern;     /* The regular expression */
  const unsigned char *zStr;/* String being searched */
  const char *zErr;         /* Compile error message */
  int setAux = 0;           /* True to invoke sqlite3_set_auxdata() */

  pRe = FUNC3(context, 0);
  if( pRe==0 ){
    zPattern = (const char*)FUNC8(argv[0]);
    if( zPattern==0 ) return;
    zErr = FUNC0(&pRe, zPattern, 0);
    if( zErr ){
      FUNC1(pRe);
      FUNC4(context, zErr, -1);
      return;
    }
    if( pRe==0 ){
      FUNC5(context);
      return;
    }
    setAux = 1;
  }
  zStr = (const unsigned char*)FUNC8(argv[1]);
  if( zStr!=0 ){
    FUNC6(context, FUNC2(pRe, zStr, -1));
  }
  if( setAux ){
    FUNC7(context, 0, pRe, (void(*)(void*))re_free);
  }
}