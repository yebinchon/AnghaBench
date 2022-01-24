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
struct TYPE_5__ {struct TYPE_5__* signature_job; struct TYPE_5__* checksum_job; struct TYPE_5__* settings_job; struct TYPE_5__* tar_job; } ;
typedef  TYPE_1__ TarPull ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC2(TarPull *i) {
        FUNC1(i);
        FUNC1(i->tar_job);

        if (!FUNC0(i->tar_job))
                return false;
        if (i->settings_job && !FUNC0(i->settings_job))
                return false;
        if (i->checksum_job && !FUNC0(i->checksum_job))
                return false;
        if (i->signature_job && !FUNC0(i->signature_job))
                return false;

        return true;
}