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
typedef  int /*<<< orphan*/  fulltext_vtab ;
typedef  int /*<<< orphan*/  LeavesReader ;
typedef  int /*<<< orphan*/  DataBuffer ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(fulltext_vtab *v, const char *pData, int nData,
                           const char *pTerm, int nTerm, int isPrefix,
                           DataBuffer *out){
  LeavesReader reader;
  int rc;

  FUNC0( nData>1 );
  FUNC0( *pData=='\0' );
  rc = FUNC2(v, 0, 0, 0, pData, nData, &reader);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC4(v, &reader, pTerm, nTerm, isPrefix, out);
  FUNC3(&reader);
  FUNC1(&reader);
  return rc;
}