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
struct Tox_Options {int ipv6_enabled; int udp_enabled; int /*<<< orphan*/  proxy_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  TOX_PROXY_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct Tox_Options*,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct Tox_Options *options)
{
    if (options) {
        FUNC0(options, 0, sizeof(struct Tox_Options));
        options->ipv6_enabled = 1;
        options->udp_enabled = 1;
        options->proxy_type = TOX_PROXY_TYPE_NONE;
    }
}