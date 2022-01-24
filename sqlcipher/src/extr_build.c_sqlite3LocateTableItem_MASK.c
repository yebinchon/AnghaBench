#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct SrcList_item {scalar_t__ pSchema; char* zDatabase; int /*<<< orphan*/  zName; } ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_8__ {TYPE_1__* aDb; } ;
struct TYPE_7__ {TYPE_3__* db; } ;
struct TYPE_6__ {char* zDbSName; } ;
typedef  TYPE_2__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (TYPE_3__*,scalar_t__) ; 

Table *FUNC3(
  Parse *pParse, 
  u32 flags,
  struct SrcList_item *p
){
  const char *zDb;
  FUNC0( p->pSchema==0 || p->zDatabase==0 );
  if( p->pSchema ){
    int iDb = FUNC2(pParse->db, p->pSchema);
    zDb = pParse->db->aDb[iDb].zDbSName;
  }else{
    zDb = p->zDatabase;
  }
  return FUNC1(pParse, flags, p->zName, zDb);
}