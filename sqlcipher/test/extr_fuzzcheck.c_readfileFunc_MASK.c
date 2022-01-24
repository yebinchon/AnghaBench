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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (void*,long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*,long,int /*<<< orphan*/  (*) (void*)) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(
  sqlite3_context *context,
  int argc,
  sqlite3_value **argv
){
  const char *zName;
  FILE *in;
  long nIn;
  void *pBuf;

  zName = (const char*)FUNC9(argv[0]);
  if( zName==0 ) return;
  in = FUNC1(zName, "rb");
  if( in==0 ) return;
  FUNC3(in, 0, SEEK_END);
  nIn = FUNC4(in);
  FUNC5(in);
  pBuf = FUNC7( nIn );
  if( pBuf && 1==FUNC2(pBuf, nIn, 1, in) ){
    FUNC8(context, pBuf, nIn, sqlite3_free);
  }else{
    FUNC6(pBuf);
  }
  FUNC0(in);
}