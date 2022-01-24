#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  aModule; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_7__ {int mPragFlg; } ;
typedef  TYPE_2__ PragmaName ;
typedef  int /*<<< orphan*/  Module ;

/* Variables and functions */
 int PragFlg_Result0 ; 
 int PragFlg_Result1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (char const*) ; 
 int /*<<< orphan*/  pragmaVtabModule ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 

Module *FUNC5(sqlite3 *db, const char *zName){
  const PragmaName *pName;
  FUNC0( FUNC4(zName, "pragma_", 7)==0 );
  pName = FUNC1(zName+7);
  if( pName==0 ) return 0;
  if( (pName->mPragFlg & (PragFlg_Result0|PragFlg_Result1))==0 ) return 0;
  FUNC0( FUNC2(&db->aModule, zName)==0 );
  return FUNC3(db, zName, &pragmaVtabModule, (void*)pName, 0);
}