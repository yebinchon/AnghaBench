#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nField; TYPE_2__* pKeyInfo; int /*<<< orphan*/ * aMem; } ;
typedef  TYPE_1__ UnpackedRecord ;
struct TYPE_6__ {int nKeyField; scalar_t__ aSortOrder; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  Mem ;
typedef  TYPE_2__ KeyInfo ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

UnpackedRecord *FUNC3(
  KeyInfo *pKeyInfo               /* Description of the record */
){
  UnpackedRecord *p;              /* Unpacked record to return */
  int nByte;                      /* Number of bytes required for *p */
  nByte = FUNC0(sizeof(UnpackedRecord)) + sizeof(Mem)*(pKeyInfo->nKeyField+1);
  p = (UnpackedRecord *)FUNC2(pKeyInfo->db, nByte);
  if( !p ) return 0;
  p->aMem = (Mem*)&((char*)p)[FUNC0(sizeof(UnpackedRecord))];
  FUNC1( pKeyInfo->aSortOrder!=0 );
  p->pKeyInfo = pKeyInfo;
  p->nField = pKeyInfo->nKeyField + 1;
  return p;
}