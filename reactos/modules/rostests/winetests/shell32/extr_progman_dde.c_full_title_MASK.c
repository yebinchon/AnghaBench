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
typedef  int /*<<< orphan*/  cs ;
struct TYPE_4__ {int fFullPathTitle; } ;
typedef  TYPE_1__ CABINETSTATE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC2(void)
{
    CABINETSTATE cs;

    FUNC1(&cs, 0, sizeof(cs));
    FUNC0(&cs, sizeof(cs));

    return (cs.fFullPathTitle == -1);
}