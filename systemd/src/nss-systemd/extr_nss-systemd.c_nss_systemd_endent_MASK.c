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
typedef  enum nss_status { ____Placeholder_nss_status } nss_status ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ GetentData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NSS_SIGNALS_BLOCK ; 
 int NSS_STATUS_SUCCESS ; 
 int /*<<< orphan*/  PROTECT_ERRNO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static enum nss_status FUNC5(GetentData *p) {
        PROTECT_ERRNO;
        FUNC0(NSS_SIGNALS_BLOCK);

        FUNC1(FUNC2(&p->mutex) == 0);
        FUNC4(p);
        FUNC1(FUNC3(&p->mutex) == 0);

        return NSS_STATUS_SUCCESS;
}