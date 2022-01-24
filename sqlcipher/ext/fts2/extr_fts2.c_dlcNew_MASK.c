#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
struct TYPE_4__ {int /*<<< orphan*/  dlw; int /*<<< orphan*/  plw; int /*<<< orphan*/  b; } ;
typedef  int /*<<< orphan*/  DocListType ;
typedef  TYPE_1__ DLCollector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 

__attribute__((used)) static DLCollector *FUNC4(sqlite_int64 iDocid, DocListType iType){
  DLCollector *pCollector = FUNC3(sizeof(DLCollector));
  FUNC0(&pCollector->b, 0);
  FUNC1(&pCollector->dlw, iType, &pCollector->b);
  FUNC2(&pCollector->plw, &pCollector->dlw, iDocid);
  return pCollector;
}