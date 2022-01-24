#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_12__ {scalar_t__ port; int /*<<< orphan*/  ip; } ;
struct TYPE_11__ {scalar_t__ family; } ;
struct TYPE_13__ {TYPE_1__ ip; } ;
struct TYPE_14__ {scalar_t__ ret_timestamp; TYPE_2__ ret_ip_port; int /*<<< orphan*/  timestamp; TYPE_3__ ip_port; } ;
struct TYPE_15__ {int /*<<< orphan*/  public_key; TYPE_4__ assoc4; TYPE_4__ assoc6; } ;
typedef  TYPE_3__ IP_Port ;
typedef  TYPE_4__ IPPTsPng ;
typedef  TYPE_5__ Client_data ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (TYPE_5__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(   Client_data    *list,
                          uint16_t        length,
                          const uint8_t  *public_key,
                          IP_Port         ip_port,
                          const uint8_t  *comp_public_key )
{
    if ((ip_port.ip.family != AF_INET) && (ip_port.ip.family != AF_INET6))
        return 0;

    if (FUNC4(&list[1], public_key, comp_public_key) || FUNC4(&list[0], public_key, comp_public_key)) {
        FUNC3(list, length, comp_public_key);

        IPPTsPng *ipptp_write = NULL;
        IPPTsPng *ipptp_clear = NULL;

        Client_data *client = &list[0];

        if (ip_port.ip.family == AF_INET) {
            ipptp_write = &client->assoc4;
            ipptp_clear = &client->assoc6;
        } else {
            ipptp_write = &client->assoc6;
            ipptp_clear = &client->assoc4;
        }

        FUNC0(client->public_key, public_key);
        ipptp_write->ip_port = ip_port;
        ipptp_write->timestamp = FUNC5();

        FUNC1(&ipptp_write->ret_ip_port.ip);
        ipptp_write->ret_ip_port.port = 0;
        ipptp_write->ret_timestamp = 0;

        /* zero out other address */
        FUNC2(ipptp_clear, 0, sizeof(*ipptp_clear));

        return 1;
    }

    return 0;
}