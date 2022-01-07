
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOOPBACK_IFINDEX ;

int dns_synthesize_ifindex(int ifindex) {







        if (ifindex > 0)
                return ifindex;

        return LOOPBACK_IFINDEX;
}
