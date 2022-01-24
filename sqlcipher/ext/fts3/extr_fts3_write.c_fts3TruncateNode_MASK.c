#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_int64 ;
struct TYPE_14__ {scalar_t__ n; scalar_t__ nAlloc; int /*<<< orphan*/  a; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  n; int /*<<< orphan*/  a; } ;
struct TYPE_13__ {int /*<<< orphan*/  iChild; int /*<<< orphan*/  nDoclist; int /*<<< orphan*/  aDoclist; TYPE_1__ term; scalar_t__ aNode; } ;
typedef  TYPE_2__ NodeReader ;
typedef  TYPE_3__ Blob ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int*) ; 
 int FUNC2 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC5 (TYPE_2__*,char const*,int) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(
  const char *aNode,              /* Current node image */
  int nNode,                      /* Size of aNode in bytes */
  Blob *pNew,                     /* OUT: Write new node image here */
  const char *zTerm,              /* Omit all terms smaller than this */
  int nTerm,                      /* Size of zTerm in bytes */
  sqlite3_int64 *piBlock          /* OUT: Block number in next layer down */
){
  NodeReader reader;              /* Reader object */
  Blob prev = {0, 0, 0};          /* Previous term written to new node */
  int rc = SQLITE_OK;             /* Return code */
  int bLeaf = aNode[0]=='\0';     /* True for a leaf node */

  /* Allocate required output space */
  FUNC1(pNew, nNode, &rc);
  if( rc!=SQLITE_OK ) return rc;
  pNew->n = 0;

  /* Populate new node buffer */
  for(rc = FUNC5(&reader, aNode, nNode); 
      rc==SQLITE_OK && reader.aNode; 
      rc = FUNC6(&reader)
  ){
    if( pNew->n==0 ){
      int res = FUNC4(reader.term.a, reader.term.n, zTerm, nTerm);
      if( res<0 || (bLeaf==0 && res==0) ) continue;
      FUNC3(pNew, (int)aNode[0], reader.iChild);
      *piBlock = reader.iChild;
    }
    rc = FUNC2(
        pNew, &prev, reader.term.a, reader.term.n,
        reader.aDoclist, reader.nDoclist
    );
    if( rc!=SQLITE_OK ) break;
  }
  if( pNew->n==0 ){
    FUNC3(pNew, (int)aNode[0], reader.iChild);
    *piBlock = reader.iChild;
  }
  FUNC0( pNew->n<=pNew->nAlloc );

  FUNC7(&reader);
  FUNC8(prev.a);
  return rc;
}