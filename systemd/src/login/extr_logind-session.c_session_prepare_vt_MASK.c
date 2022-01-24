#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vt_mode {void* acqsig; void* relsig; int /*<<< orphan*/  mode; } ;
struct TYPE_7__ {int vtnr; TYPE_1__* user; } ;
struct TYPE_6__ {int /*<<< orphan*/  uid; } ;
typedef  TYPE_2__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  KDSETMODE ; 
 int /*<<< orphan*/  KDSKBMODE ; 
 struct vt_mode* KD_GRAPHICS ; 
 struct vt_mode* K_OFF ; 
 void* SIGRTMIN ; 
 int /*<<< orphan*/  VT_PROCESS ; 
 int /*<<< orphan*/  VT_SETMODE ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct vt_mode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(Session *s) {
        int vt, r;
        struct vt_mode mode = {};

        if (s->vtnr < 1)
                return 0;

        vt = FUNC3(s);
        if (vt < 0)
                return vt;

        r = FUNC0(vt, s->user->uid, -1);
        if (r < 0) {
                r = FUNC2(errno,
                                    "Cannot change owner of /dev/tty%u: %m",
                                    s->vtnr);
                goto error;
        }

        r = FUNC1(vt, KDSKBMODE, K_OFF);
        if (r < 0) {
                r = FUNC2(errno,
                                    "Cannot set K_OFF on /dev/tty%u: %m",
                                    s->vtnr);
                goto error;
        }

        r = FUNC1(vt, KDSETMODE, KD_GRAPHICS);
        if (r < 0) {
                r = FUNC2(errno,
                                    "Cannot set KD_GRAPHICS on /dev/tty%u: %m",
                                    s->vtnr);
                goto error;
        }

        /* Oh, thanks to the VT layer, VT_AUTO does not work with KD_GRAPHICS.
         * So we need a dummy handler here which just acknowledges *all* VT
         * switch requests. */
        mode.mode = VT_PROCESS;
        mode.relsig = SIGRTMIN;
        mode.acqsig = SIGRTMIN + 1;
        r = FUNC1(vt, VT_SETMODE, &mode);
        if (r < 0) {
                r = FUNC2(errno,
                                    "Cannot set VT_PROCESS on /dev/tty%u: %m",
                                    s->vtnr);
                goto error;
        }

        return 0;

error:
        FUNC4(s);
        return r;
}