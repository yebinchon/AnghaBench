#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/  ftLastWriteTime; int /*<<< orphan*/  nFileSizeLow; } ;
struct TYPE_5__ {TYPE_1__ fd; } ;
typedef  TYPE_2__* PLFNDTA ;
typedef  scalar_t__ LPTSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  szBytes ; 
 int /*<<< orphan*/  szSpace ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VOID
FUNC5(LPTSTR szTemp, PLFNDTA plfndta)
{
   FUNC4(szTemp, szBytes, plfndta->fd.nFileSizeLow);
   FUNC2(szTemp, szSpace);
   FUNC0(&plfndta->fd.ftLastWriteTime, szTemp + FUNC3(szTemp));
   FUNC2(szTemp, szSpace);
   FUNC1(&plfndta->fd.ftLastWriteTime, szTemp + FUNC3(szTemp));
}