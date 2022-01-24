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
struct iovec {int dummy; } ;
struct e82545_softc {int /*<<< orphan*/  vms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iovec*,int) ; 

__attribute__((used)) static void
FUNC1(struct e82545_softc *sc, struct iovec *iov, int iovcnt)
{
    if (!sc->vms)
        return;

    FUNC0(sc->vms, iov, iovcnt);
}