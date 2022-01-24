#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u8 ;
struct TYPE_7__ {int /*<<< orphan*/  szCurrent; int /*<<< orphan*/  const* aBuffer; } ;
typedef  TYPE_1__ ZipfileTab ;
struct TYPE_8__ {int /*<<< orphan*/  iDataOff; } ;
typedef  TYPE_2__ ZipfileEntry ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(
  ZipfileTab *pTab,
  ZipfileEntry *pEntry,
  const u8 *pData,
  int nData
){
  u8 *aBuf = pTab->aBuffer;
  int nBuf;
  int rc;

  nBuf = FUNC1(pEntry, aBuf);
  rc = FUNC0(pTab, aBuf, nBuf);
  if( rc==SQLITE_OK ){
    pEntry->iDataOff = pTab->szCurrent;
    rc = FUNC0(pTab, pData, nData);
  }

  return rc;
}