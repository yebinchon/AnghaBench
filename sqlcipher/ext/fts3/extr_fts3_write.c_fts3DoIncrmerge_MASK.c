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
struct TYPE_6__ {scalar_t__ bFts4; int /*<<< orphan*/  bHasStat; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int FTS3_MERGE_COUNT ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (int*,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(
  Fts3Table *p,                   /* FTS3 table handle */
  const char *zParam              /* Nul-terminated string containing "A,B" */
){
  int rc;
  int nMin = (FTS3_MERGE_COUNT / 2);
  int nMerge = 0;
  const char *z = zParam;

  /* Read the first integer value */
  nMerge = FUNC1(&z);

  /* If the first integer value is followed by a ',',  read the second
  ** integer value. */
  if( z[0]==',' && z[1]!='\0' ){
    z++;
    nMin = FUNC1(&z);
  }

  if( z[0]!='\0' || nMin<2 ){
    rc = SQLITE_ERROR;
  }else{
    rc = SQLITE_OK;
    if( !p->bHasStat ){
      FUNC0( p->bFts4==0 );
      FUNC2(&rc, p);
    }
    if( rc==SQLITE_OK ){
      rc = FUNC3(p, nMerge, nMin);
    }
    FUNC4(p);
  }
  return rc;
}