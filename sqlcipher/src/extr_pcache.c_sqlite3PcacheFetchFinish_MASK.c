#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ pExtra; } ;
typedef  TYPE_1__ sqlite3_pcache_page ;
struct TYPE_13__ {int /*<<< orphan*/  nRefSum; } ;
struct TYPE_12__ {int /*<<< orphan*/  nRef; int /*<<< orphan*/  pPage; } ;
typedef  int /*<<< orphan*/  Pgno ;
typedef  TYPE_2__ PgHdr ;
typedef  TYPE_3__ PCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (TYPE_2__*) ; 

PgHdr *FUNC3(
  PCache *pCache,             /* Obtain the page from this cache */
  Pgno pgno,                  /* Page number obtained */
  sqlite3_pcache_page *pPage  /* Page obtained by prior PcacheFetch() call */
){
  PgHdr *pPgHdr;

  FUNC0( pPage!=0 );
  pPgHdr = (PgHdr *)pPage->pExtra;

  if( !pPgHdr->pPage ){
    return FUNC1(pCache, pgno, pPage);
  }
  pCache->nRefSum++;
  pPgHdr->nRef++;
  FUNC0( FUNC2(pPgHdr) );
  return pPgHdr;
}