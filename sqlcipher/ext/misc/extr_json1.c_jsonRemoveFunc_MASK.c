#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_10__ {int jnFlags; } ;
struct TYPE_9__ {int jnFlags; } ;
struct TYPE_8__ {TYPE_3__* aNode; scalar_t__ nErr; int /*<<< orphan*/  nNode; } ;
typedef  TYPE_1__ JsonParse ;
typedef  TYPE_2__ JsonNode ;

/* Variables and functions */
 int JNODE_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  JsonParse x;          /* The parse */
  JsonNode *pNode;
  const char *zPath;
  u32 i;

  if( argc<1 ) return;
  if( FUNC2(&x, ctx, (const char*)FUNC5(argv[0])) ) return;
  FUNC0( x.nNode );
  for(i=1; i<(u32)argc; i++){
    zPath = (const char*)FUNC5(argv[i]);
    if( zPath==0 ) goto remove_done;
    pNode = FUNC1(&x, zPath, 0, ctx);
    if( x.nErr ) goto remove_done;
    if( pNode ) pNode->jnFlags |= JNODE_REMOVE;
  }
  if( (x.aNode[0].jnFlags & JNODE_REMOVE)==0 ){
    FUNC4(x.aNode, ctx, 0);
  }
remove_done:
  FUNC3(&x);
}