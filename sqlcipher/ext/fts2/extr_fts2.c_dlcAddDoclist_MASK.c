#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  nData; int /*<<< orphan*/  pData; } ;
struct TYPE_5__ {scalar_t__ iType; } ;
struct TYPE_7__ {TYPE_2__ b; TYPE_1__ dlw; } ;
typedef  int /*<<< orphan*/  DataBuffer ;
typedef  TYPE_3__ DLCollector ;

/* Variables and functions */
 scalar_t__ DL_DOCIDS ; 
 int /*<<< orphan*/  POS_END ; 
 int VARINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(DLCollector *pCollector, DataBuffer *b){
  if( pCollector->dlw.iType>DL_DOCIDS ){
    char c[VARINT_MAX];
    int n = FUNC2(c, POS_END);
    FUNC1(b, pCollector->b.pData, pCollector->b.nData, c, n);
  }else{
    FUNC0(b, pCollector->b.pData, pCollector->b.nData);
  }
}