
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int rx_pending; int rx_pending_set; int tx_pending; int tx_pending_set; } ;
typedef TYPE_1__ netdev_ring_param ;


 int LOG_ERR ;
 int assert (void*) ;
 int log_syntax (char const*,int ,char const*,unsigned int,int,char*,char const*,...) ;
 int safe_atou32 (char const*,int*) ;
 scalar_t__ streq (char const*,char*) ;

int config_parse_nic_buffer_size(const char *unit,
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

        assert(filename);
        assert(section);
        assert(lvalue);
        assert(rvalue);
        assert(data);

        r = safe_atou32(rvalue, &k);
        if (r < 0) {
                log_syntax(unit, LOG_ERR, filename, line, r, "Failed to parse interface buffer value, ignoring: %s", rvalue);
                return 0;
        }

        if (k < 1) {
                log_syntax(unit, LOG_ERR, filename, line, 0, "Invalid %s value, ignoring: %s", lvalue, rvalue);
                return 0;
        }

        if (streq(lvalue, "RxBufferSize")) {
                ring->rx_pending = k;
                ring->rx_pending_set = 1;
        } else if (streq(lvalue, "TxBufferSize")) {
                ring->tx_pending = k;
                ring->tx_pending_set = 1;
        }

        return 0;
}
