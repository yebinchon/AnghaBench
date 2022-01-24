#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
typedef  void* u16 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  scalar_t__ i64 ;
struct TYPE_9__ {scalar_t__ szCurrent; int /*<<< orphan*/  aBuffer; TYPE_2__* pFirstEntry; scalar_t__ pWriteFd; } ;
typedef  TYPE_1__ ZipfileTab ;
struct TYPE_10__ {struct TYPE_10__* pNext; } ;
typedef  TYPE_2__ ZipfileEntry ;
struct TYPE_11__ {void* iOffset; void* nSize; void* nEntryTotal; void* nEntry; scalar_t__ iFirstDisk; scalar_t__ iDisk; } ;
typedef  TYPE_3__ ZipfileEOCD ;

/* Variables and functions */
 int SQLITE_OK ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sqlite3_vtab *pVtab){
  ZipfileTab *pTab = (ZipfileTab*)pVtab;
  int rc = SQLITE_OK;
  if( pTab->pWriteFd ){
    i64 iOffset = pTab->szCurrent;
    ZipfileEntry *p;
    ZipfileEOCD eocd;
    int nEntry = 0;

    /* Write out all entries */
    for(p=pTab->pFirstEntry; rc==SQLITE_OK && p; p=p->pNext){
      int n = FUNC3(p, pTab->aBuffer);
      rc = FUNC0(pTab, pTab->aBuffer, n);
      nEntry++;
    }

    /* Write out the EOCD record */
    eocd.iDisk = 0;
    eocd.iFirstDisk = 0;
    eocd.nEntry = (u16)nEntry;
    eocd.nEntryTotal = (u16)nEntry;
    eocd.nSize = (u32)(pTab->szCurrent - iOffset);
    eocd.iOffset = (u32)iOffset;
    rc = FUNC1(pTab, &eocd);

    FUNC2(pTab);
  }
  return rc;
}