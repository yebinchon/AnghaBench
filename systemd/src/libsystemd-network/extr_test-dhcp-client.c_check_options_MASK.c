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
typedef  int uint8_t ;
struct duid {int dummy; } ;
typedef  struct duid uint32_t ;
typedef  int /*<<< orphan*/  iaid ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
#define  SD_DHCP_OPTION_CLIENT_IDENTIFIER 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct duid*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct duid*) ; 
 int /*<<< orphan*/  mac_addr ; 
 int /*<<< orphan*/  FUNC3 (int*,struct duid*,size_t) ; 

__attribute__((used)) static int FUNC4(uint8_t code, uint8_t len, const void *option, void *userdata) {
        switch(code) {
        case SD_DHCP_OPTION_CLIENT_IDENTIFIER:
        {
                uint32_t iaid;
                struct duid duid;
                size_t duid_len;

                FUNC0(FUNC1(&duid, &duid_len) >= 0);
                FUNC0(FUNC2(42, mac_addr, ETH_ALEN, true, &iaid) >= 0);

                FUNC0(len == sizeof(uint8_t) + sizeof(uint32_t) + duid_len);
                FUNC0(len == 19);
                FUNC0(((uint8_t*) option)[0] == 0xff);

                FUNC0(FUNC3((uint8_t*) option + 1, &iaid, sizeof(iaid)) == 0);
                FUNC0(FUNC3((uint8_t*) option + 5, &duid, duid_len) == 0);
                break;
        }

        default:
                break;
        }

        return 0;
}