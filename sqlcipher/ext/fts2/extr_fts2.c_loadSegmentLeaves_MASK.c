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
typedef  scalar_t__ sqlite_int64 ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
typedef  int /*<<< orphan*/  LeavesReader ;
typedef  int /*<<< orphan*/  DataBuffer ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(fulltext_vtab *v,
                             sqlite_int64 iStartLeaf, sqlite_int64 iEndLeaf,
                             const char *pTerm, int nTerm, int isPrefix,
                             DataBuffer *out){
  int rc;
  LeavesReader reader;

  FUNC0( iStartLeaf<=iEndLeaf );
  rc = FUNC2(v, 0, iStartLeaf, iEndLeaf, NULL, 0, &reader);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC4(v, &reader, pTerm, nTerm, isPrefix, out);
  FUNC3(&reader);
  FUNC1(&reader);
  return rc;
}