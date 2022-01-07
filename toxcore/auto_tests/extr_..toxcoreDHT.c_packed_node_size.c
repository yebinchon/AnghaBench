
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int PACKED_NODE_SIZE_IP4 ;
 int PACKED_NODE_SIZE_IP6 ;
 scalar_t__ TCP_INET ;
 scalar_t__ TCP_INET6 ;

int packed_node_size(uint8_t ip_family)
{
    if (ip_family == AF_INET) {
        return PACKED_NODE_SIZE_IP4;
    } else if (ip_family == TCP_INET) {
        return PACKED_NODE_SIZE_IP4;
    } else if (ip_family == AF_INET6) {
        return PACKED_NODE_SIZE_IP6;
    } else if (ip_family == TCP_INET6) {
        return PACKED_NODE_SIZE_IP6;
    } else {
        return -1;
    }
}
