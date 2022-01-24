#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_4__ {scalar_t__ nErr; } ;
typedef  int /*<<< orphan*/  JsonString ;
typedef  TYPE_1__ JsonParse ;
typedef  int /*<<< orphan*/  JsonNode ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_SUBTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonParse *p;          /* The parse */
  JsonNode *pNode;
  const char *zPath;
  JsonString jx;
  int i;

  if( argc<2 ) return;
  p = FUNC5(ctx, argv, ctx);
  if( p==0 ) return;
  FUNC3(&jx, ctx);
  FUNC0(&jx, '[');
  for(i=1; i<argc; i++){
    zPath = (const char*)FUNC11(argv[i]);
    pNode = FUNC4(p, zPath, 0, ctx);
    if( p->nErr ) break;
    if( argc>2 ){
      FUNC2(&jx);
      if( pNode ){
        FUNC6(pNode, &jx, 0);
      }else{
        FUNC1(&jx, "null", 4);
      }
    }else if( pNode ){
      FUNC9(pNode, ctx, 0);
    }
  }
  if( argc>2 && i==argc ){
    FUNC0(&jx, ']');
    FUNC8(&jx);
    FUNC10(ctx, JSON_SUBTYPE);
  }
  FUNC7(&jx);
}