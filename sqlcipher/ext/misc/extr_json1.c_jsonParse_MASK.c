#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_6__ {char const* zJson; scalar_t__ iDepth; scalar_t__ oom; } ;
typedef  TYPE_1__ JsonParse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
  JsonParse *pParse,           /* Initialize and fill this JsonParse object */
  sqlite3_context *pCtx,       /* Report errors here */
  const char *zJson            /* Input JSON text to be parsed */
){
  int i;
  FUNC3(pParse, 0, sizeof(*pParse));
  if( zJson==0 ) return 1;
  pParse->zJson = zJson;
  i = FUNC2(pParse, 0);
  if( pParse->oom ) i = -1;
  if( i>0 ){
    FUNC0( pParse->iDepth==0 );
    while( FUNC4(zJson[i]) ) i++;
    if( zJson[i] ) i = -1;
  }
  if( i<=0 ){
    if( pCtx!=0 ){
      if( pParse->oom ){
        FUNC6(pCtx);
      }else{
        FUNC5(pCtx, "malformed JSON", -1);
      }
    }
    FUNC1(pParse);
    return 1;
  }
  return 0;
}