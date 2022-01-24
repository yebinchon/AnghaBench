#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_11__ {size_t iReplace; } ;
struct TYPE_14__ {int jnFlags; TYPE_2__ u; } ;
struct TYPE_10__ {int iReplace; } ;
struct TYPE_13__ {TYPE_1__ u; int /*<<< orphan*/  jnFlags; } ;
struct TYPE_12__ {TYPE_5__* aNode; scalar_t__ nErr; int /*<<< orphan*/  nNode; } ;
typedef  TYPE_3__ JsonParse ;
typedef  TYPE_4__ JsonNode ;

/* Variables and functions */
 int JNODE_REPLACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (TYPE_3__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonParse x;          /* The parse */
  JsonNode *pNode;
  const char *zPath;
  u32 i;

  if( argc<1 ) return;
  if( (argc&1)==0 ) {
    FUNC5(ctx, "replace");
    return;
  }
  if( FUNC2(&x, ctx, (const char*)FUNC7(argv[0])) ) return;
  FUNC0( x.nNode );
  for(i=1; i<(u32)argc; i+=2){
    zPath = (const char*)FUNC7(argv[i]);
    pNode = FUNC1(&x, zPath, 0, ctx);
    if( x.nErr ) goto replace_err;
    if( pNode ){
      pNode->jnFlags |= (u8)JNODE_REPLACE;
      pNode->u.iReplace = i + 1;
    }
  }
  if( x.aNode[0].jnFlags & JNODE_REPLACE ){
    FUNC6(ctx, argv[x.aNode[0].u.iReplace]);
  }else{
    FUNC4(x.aNode, ctx, argv);
  }
replace_err:
  FUNC3(&x);
}