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
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_1__* header; } ;
struct TYPE_5__ {int /*<<< orphan*/  n_tags; } ;
typedef  TYPE_2__ JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t FUNC3(JournalFile *f) {
        uint64_t r;

        FUNC0(f);

        r = FUNC2(f->header->n_tags) + 1;
        f->header->n_tags = FUNC1(r);

        return r;
}