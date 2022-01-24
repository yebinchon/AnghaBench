#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u16 ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3_context ;
typedef  int /*<<< orphan*/  eocd ;
struct TYPE_9__ {size_t nSize; size_t iOffset; void* nEntryTotal; void* nEntry; } ;
typedef  TYPE_3__ ZipfileEOCD ;
struct TYPE_8__ {size_t n; int /*<<< orphan*/  a; } ;
struct TYPE_7__ {size_t n; int /*<<< orphan*/  a; } ;
struct TYPE_10__ {scalar_t__ nEntry; TYPE_2__ cds; TYPE_1__ body; } ;
typedef  TYPE_4__ ZipfileCtx ;

/* Variables and functions */
 scalar_t__ ZIPFILE_EOCD_FIXED_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zipfileFree ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 

void FUNC8(sqlite3_context *pCtx){
  ZipfileCtx *p;
  ZipfileEOCD eocd;
  sqlite3_int64 nZip;
  u8 *aZip;

  p = (ZipfileCtx*)FUNC2(pCtx, sizeof(ZipfileCtx));
  if( p==0 ) return;
  if( p->nEntry>0 ){
    FUNC1(&eocd, 0, sizeof(eocd));
    eocd.nEntry = (u16)p->nEntry;
    eocd.nEntryTotal = (u16)p->nEntry;
    eocd.nSize = p->cds.n;
    eocd.iOffset = p->body.n;

    nZip = p->body.n + p->cds.n + ZIPFILE_EOCD_FIXED_SZ;
    aZip = (u8*)FUNC4(nZip);
    if( aZip==0 ){
      FUNC6(pCtx);
    }else{
      FUNC0(aZip, p->body.a, p->body.n);
      FUNC0(&aZip[p->body.n], p->cds.a, p->cds.n);
      FUNC7(&eocd, &aZip[p->body.n + p->cds.n]);
      FUNC5(pCtx, aZip, (int)nZip, zipfileFree);
    }
  }

  FUNC3(p->body.a);
  FUNC3(p->cds.a);
}