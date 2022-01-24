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
struct TYPE_6__ {int /*<<< orphan*/ * server_cert_chain; int /*<<< orphan*/  whitelist; } ;
typedef  TYPE_1__ vlc_tls_creds_sys_t ;
struct TYPE_7__ {TYPE_1__* sys; int /*<<< orphan*/ * ops; } ;
typedef  TYPE_2__ vlc_tls_client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFTypeArrayCallBacks ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  st_ClientOps ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (vlc_tls_client_t *crd) {

    FUNC2(crd, "open st client");

    vlc_tls_creds_sys_t *sys = FUNC1 (sizeof (*sys));
    if (FUNC3(sys == NULL))
        return VLC_ENOMEM;

    sys->whitelist = FUNC0(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    sys->server_cert_chain = NULL;

    crd->ops = &st_ClientOps;
    crd->sys = sys;
    return VLC_SUCCESS;
}