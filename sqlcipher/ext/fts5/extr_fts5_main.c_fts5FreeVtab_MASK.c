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
struct TYPE_5__ {int /*<<< orphan*/  pConfig; int /*<<< orphan*/  pIndex; } ;
struct TYPE_6__ {TYPE_1__ p; int /*<<< orphan*/  pStorage; } ;
typedef  TYPE_2__ Fts5FullTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(Fts5FullTable *pTab){
  if( pTab ){
    FUNC1(pTab->p.pIndex);
    FUNC2(pTab->pStorage);
    FUNC0(pTab->p.pConfig);
    FUNC3(pTab);
  }
}