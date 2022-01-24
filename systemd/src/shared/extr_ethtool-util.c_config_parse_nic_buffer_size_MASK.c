#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {int rx_pending; int rx_pending_set; int tx_pending; int tx_pending_set; } ;
typedef  TYPE_1__ netdev_ring_param ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*,...) ; 
 int FUNC2 (char const*,int*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

int FUNC4(const char *unit,
                                 const char *filename,
                                 unsigned line,
                                 const char *section,
                                 unsigned section_line,
                                 const char *lvalue,
                                 int ltype,
                                 const char *rvalue,
                                 void *data,
                                 void *userdata) {
        netdev_ring_param *ring = data;
        uint32_t k;
        int r;

        FUNC0(filename);
        FUNC0(section);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        r = FUNC2(rvalue, &k);
        if (r < 0) {
                FUNC1(unit, LOG_ERR, filename, line, r, "Failed to parse interface buffer value, ignoring: %s", rvalue);
                return 0;
        }

        if (k < 1) {
                FUNC1(unit, LOG_ERR, filename, line, 0, "Invalid %s value, ignoring: %s", lvalue, rvalue);
                return 0;
        }

        if (FUNC3(lvalue, "RxBufferSize")) {
                ring->rx_pending = k;
                ring->rx_pending_set = true;
        } else if (FUNC3(lvalue, "TxBufferSize")) {
                ring->tx_pending = k;
                ring->tx_pending_set = true;
        }

        return 0;
}