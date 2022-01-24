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
struct TYPE_4__ {struct TYPE_4__* options; struct TYPE_4__* path; } ;
typedef  TYPE_1__ TemporaryFileSystem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(TemporaryFileSystem *t, size_t n) {
        size_t i;

        FUNC0(t || n == 0);

        for (i = 0; i < n; i++) {
                FUNC1(t[i].path);
                FUNC1(t[i].options);
        }

        FUNC1(t);
}