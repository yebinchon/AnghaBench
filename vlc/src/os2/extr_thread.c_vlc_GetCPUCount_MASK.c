#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  numprocs ;
typedef  int ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  QSV_NUMPROCESSORS ; 

unsigned FUNC1 (void)
{
    ULONG numprocs = 1;

    FUNC0(QSV_NUMPROCESSORS, QSV_NUMPROCESSORS,
                    &numprocs, sizeof(numprocs));

    return numprocs;
}