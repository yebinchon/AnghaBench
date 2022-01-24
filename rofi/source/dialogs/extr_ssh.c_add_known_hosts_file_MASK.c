#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  user_known_hosts; } ;
typedef  TYPE_1__ SSHModePrivateData ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GCompareFunc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ g_strcmp0 ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4 ( SSHModePrivateData *pd, const char *token )
{
    GList *item = FUNC2 ( pd->user_known_hosts, token, (GCompareFunc)g_strcmp0 );
    if ( item == NULL ) {
        FUNC0("Add '%s' to UserKnownHost list", token);
        pd->user_known_hosts = FUNC1 ( pd->user_known_hosts, FUNC3 ( token ) );
    } else {
        FUNC0("File '%s' already in UserKnownHostsFile list", token);
    }
}