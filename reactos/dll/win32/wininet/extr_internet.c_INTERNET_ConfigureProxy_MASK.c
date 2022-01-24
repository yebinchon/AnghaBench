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
struct TYPE_6__ {int /*<<< orphan*/  proxyPassword; int /*<<< orphan*/  proxyUsername; int /*<<< orphan*/  proxyBypass; int /*<<< orphan*/  proxy; scalar_t__ proxyEnabled; } ;
typedef  TYPE_1__ proxyinfo_t ;
struct TYPE_7__ {int /*<<< orphan*/  accessType; int /*<<< orphan*/  proxyPassword; int /*<<< orphan*/  proxyUsername; int /*<<< orphan*/  proxyBypass; int /*<<< orphan*/  proxy; } ;
typedef  TYPE_2__ appinfo_t ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_DIRECT ; 
 int /*<<< orphan*/  INTERNET_OPEN_TYPE_PROXY ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC4( appinfo_t *lpwai )
{
    proxyinfo_t wpi;

    if (FUNC1( &wpi ))
        return FALSE;

    if (wpi.proxyEnabled)
    {
        FUNC2("http proxy = %s bypass = %s\n", FUNC3(wpi.proxy), FUNC3(wpi.proxyBypass));

        lpwai->accessType    = INTERNET_OPEN_TYPE_PROXY;
        lpwai->proxy         = wpi.proxy;
        lpwai->proxyBypass   = wpi.proxyBypass;
        lpwai->proxyUsername = wpi.proxyUsername;
        lpwai->proxyPassword = wpi.proxyPassword;
        return TRUE;
    }

    lpwai->accessType = INTERNET_OPEN_TYPE_DIRECT;
    FUNC0(&wpi);
    return FALSE;
}