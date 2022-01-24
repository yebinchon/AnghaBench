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
typedef  scalar_t__ i64 ;
struct TYPE_5__ {TYPE_2__* pCsrList; } ;
typedef  TYPE_1__ ZipfileTab ;
struct TYPE_6__ {scalar_t__ iId; struct TYPE_6__* pCsrNext; } ;
typedef  TYPE_2__ ZipfileCsr ;

/* Variables and functions */

__attribute__((used)) static ZipfileCsr *FUNC0(ZipfileTab *pTab, i64 iId){
  ZipfileCsr *pCsr;
  for(pCsr=pTab->pCsrList; pCsr; pCsr=pCsr->pCsrNext){
    if( iId==pCsr->iId ) break;
  }
  return pCsr;
}