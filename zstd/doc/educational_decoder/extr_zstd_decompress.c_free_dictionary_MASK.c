#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* const content; int /*<<< orphan*/  ml_dtable; int /*<<< orphan*/  of_dtable; int /*<<< orphan*/  ll_dtable; int /*<<< orphan*/  literals_dtable; } ;
typedef  TYPE_1__ dictionary_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 

void FUNC4(dictionary_t *const dict) {
    FUNC1(&dict->literals_dtable);
    FUNC0(&dict->ll_dtable);
    FUNC0(&dict->of_dtable);
    FUNC0(&dict->ml_dtable);

    FUNC2(dict->content);

    FUNC3(dict, 0, sizeof(dictionary_t));

    FUNC2(dict);
}