#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Trigger ;
typedef  int /*<<< orphan*/  Table ;
struct TYPE_2__ {int schemaFlags; int /*<<< orphan*/  iGeneration; scalar_t__ pSeqTab; int /*<<< orphan*/  fkeyHash; int /*<<< orphan*/  tblHash; int /*<<< orphan*/  idxHash; int /*<<< orphan*/  trigHash; } ;
typedef  TYPE_1__ Schema ;
typedef  int /*<<< orphan*/  HashElem ;
typedef  int /*<<< orphan*/  Hash ;

/* Variables and functions */
 int DB_ResetWanted ; 
 int DB_SchemaLoaded ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void *p){
  Hash temp1;
  Hash temp2;
  HashElem *pElem;
  Schema *pSchema = (Schema *)p;

  temp1 = pSchema->tblHash;
  temp2 = pSchema->trigHash;
  FUNC3(&pSchema->trigHash);
  FUNC2(&pSchema->idxHash);
  for(pElem=FUNC5(&temp2); pElem; pElem=FUNC6(pElem)){
    FUNC1(0, (Trigger*)FUNC4(pElem));
  }
  FUNC2(&temp2);
  FUNC3(&pSchema->tblHash);
  for(pElem=FUNC5(&temp1); pElem; pElem=FUNC6(pElem)){
    Table *pTab = FUNC4(pElem);
    FUNC0(0, pTab);
  }
  FUNC2(&temp1);
  FUNC2(&pSchema->fkeyHash);
  pSchema->pSeqTab = 0;
  if( pSchema->schemaFlags & DB_SchemaLoaded ){
    pSchema->iGeneration++;
  }
  pSchema->schemaFlags &= ~(DB_SchemaLoaded|DB_ResetWanted);
}