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
struct TYPE_4__ {unsigned int hosts_list_length; struct TYPE_4__* hosts_list; int /*<<< orphan*/  user_known_hosts; struct TYPE_4__* hostname; } ;
typedef  TYPE_1__ SSHModePrivateData ;
typedef  int /*<<< orphan*/  Mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_1__*)) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 ( Mode *sw )
{
    SSHModePrivateData *rmpd = (SSHModePrivateData *) FUNC2 ( sw );
    if ( rmpd != NULL ) {
        for ( unsigned int i = 0; i < rmpd->hosts_list_length; i++ ){
            FUNC0( rmpd->hosts_list[i].hostname );
        }
        FUNC1 ( rmpd->user_known_hosts, g_free );
        FUNC0 ( rmpd->hosts_list );
        FUNC0 ( rmpd );
        FUNC3 ( sw, NULL );
    }
}