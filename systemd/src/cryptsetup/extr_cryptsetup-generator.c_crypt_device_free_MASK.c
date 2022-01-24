#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  options; int /*<<< orphan*/  name; int /*<<< orphan*/  keydev; int /*<<< orphan*/  keyfile; int /*<<< orphan*/  uuid; } ;
typedef  TYPE_1__ crypto_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static crypto_device* FUNC2(crypto_device *d) {
        if (!d)
                return NULL;

        FUNC0(d->uuid);
        FUNC0(d->keyfile);
        FUNC0(d->keydev);
        FUNC0(d->name);
        FUNC0(d->options);
        return FUNC1(d);
}