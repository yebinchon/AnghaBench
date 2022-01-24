#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
struct TYPE_5__ {int nColumn; } ;
typedef  TYPE_1__ fulltext_vtab ;
typedef  int /*<<< orphan*/  fts1Hash ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char const***) ; 
 int /*<<< orphan*/  FUNC2 (int,char const**) ; 

__attribute__((used)) static int FUNC3(fulltext_vtab *v, fts1Hash *pTerms, sqlite_int64 iRowid){
  const char **pValues;
  int i;

  int rc = FUNC1(v, iRowid, &pValues);
  if( rc!=SQLITE_OK ) return rc;

  for(i = 0 ; i < v->nColumn; ++i) {
    rc = FUNC0(v, pTerms, iRowid, pValues[i], -1);
    if( rc!=SQLITE_OK ) break;
  }

  FUNC2(v->nColumn, pValues);
  return SQLITE_OK;
}