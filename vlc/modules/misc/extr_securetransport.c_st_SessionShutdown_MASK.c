#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tls_t ;
struct TYPE_2__ {int /*<<< orphan*/  obj; int /*<<< orphan*/  p_context; scalar_t__ b_handshaked; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vlc_tls_st_t ;
typedef  scalar_t__ OSStatus ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ noErr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5 (vlc_tls_t *session, bool duplex) {

    vlc_tls_st_t *sys = (vlc_tls_st_t *)session;

    FUNC2(sys->obj, "shutdown TLS session");

    FUNC4(&sys->lock);

    OSStatus ret = noErr;
    FUNC1(duplex);

    if (sys->b_handshaked) {
        ret = FUNC0(sys->p_context);
    }

    if (ret != noErr) {
        FUNC3(sys->obj, "Cannot close ssl context (%i)", (int)ret);
        return ret;
    }

    return 0;
}