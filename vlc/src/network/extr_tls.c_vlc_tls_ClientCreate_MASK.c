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
typedef  int /*<<< orphan*/  vlc_tls_client_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  tls_client_load ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

vlc_tls_client_t *FUNC5(vlc_object_t *obj)
{
    vlc_tls_client_t *crd = FUNC2(obj, sizeof (*crd),
                                              "tls client");
    if (FUNC1(crd == NULL))
        return NULL;

    if (FUNC3(crd, "tls client", NULL, false,
                        tls_client_load, crd) == NULL)
    {
        FUNC0 (crd, "TLS client plugin not available");
        FUNC4(crd);
        return NULL;
    }

    return crd;
}