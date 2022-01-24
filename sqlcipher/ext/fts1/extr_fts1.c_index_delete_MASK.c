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
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
typedef  int /*<<< orphan*/  fts1Hash ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(fulltext_vtab *v, sqlite_int64 iRow, fts1Hash *pTerms){
  int rc = FUNC1(v, pTerms, iRow);
  if( rc!=SQLITE_OK ) return rc;
  return FUNC0(v, iRow);  /* execute an SQL DELETE */
}