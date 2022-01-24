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
typedef  int /*<<< orphan*/ * HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/ * hChild ; 
 int /*<<< orphan*/ * hRoot ; 

__attribute__((used)) static void FUNC1(HTREEITEM hItem)
{
    if (hItem == hRoot) {
        FUNC0('R');
        return;
    }
    if (hItem == hChild) {
        FUNC0('C');
        return;
    }
    if (hItem == NULL) {
        FUNC0('n');
        return;
    }
    FUNC0('?');
}