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
struct TYPE_4__ {int /*<<< orphan*/  zName; scalar_t__ pSelect; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(Parse *pParse, Table *pTab){
  const char *zType = 0;
#ifndef SQLITE_OMIT_VIEW
  if( pTab->pSelect ){
    zType = "view";
  }
#endif
#ifndef SQLITE_OMIT_VIRTUALTABLE
  if( FUNC0(pTab) ){
    zType = "virtual table";
  }
#endif
  if( zType ){
    FUNC1(
        pParse, "cannot rename columns of %s \"%s\"", zType, pTab->zName
    );
    return 1;
  }
  return 0;
}