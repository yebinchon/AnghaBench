#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  lifetime_t2; int /*<<< orphan*/  lifetime_t1; } ;
struct TYPE_11__ {TYPE_3__ ia_pd; scalar_t__ addresses; } ;
struct TYPE_8__ {int /*<<< orphan*/  lifetime_t2; int /*<<< orphan*/  lifetime_t1; } ;
struct TYPE_9__ {TYPE_1__ ia_na; scalar_t__ addresses; } ;
struct TYPE_12__ {TYPE_4__ pd; struct TYPE_12__* lease; int /*<<< orphan*/  request; TYPE_2__ ia; } ;
typedef  TYPE_5__ sd_dhcp6_client ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP6_REQUEST_IA_NA ; 
 int /*<<< orphan*/  DHCP6_REQUEST_IA_PD ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOMSG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(sd_dhcp6_client *client, uint32_t *lifetime_t1,
                               uint32_t *lifetime_t2) {
        FUNC1(client, -EINVAL);
        FUNC1(client->lease, -EINVAL);

        if (FUNC0(client->request, DHCP6_REQUEST_IA_NA) && client->lease->ia.addresses) {
                *lifetime_t1 = FUNC2(client->lease->ia.ia_na.lifetime_t1);
                *lifetime_t2 = FUNC2(client->lease->ia.ia_na.lifetime_t2);

                return 0;
        }

        if (FUNC0(client->request, DHCP6_REQUEST_IA_PD) && client->lease->pd.addresses) {
                *lifetime_t1 = FUNC2(client->lease->pd.ia_pd.lifetime_t1);
                *lifetime_t2 = FUNC2(client->lease->pd.ia_pd.lifetime_t2);

                return 0;
        }

        return -ENOMSG;
}