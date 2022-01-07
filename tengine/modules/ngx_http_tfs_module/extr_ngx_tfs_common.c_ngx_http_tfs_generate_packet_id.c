
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int INT_MAX ;

uint64_t
ngx_http_tfs_generate_packet_id(void)
{
    static uint64_t id = 2;

    if (id >= INT_MAX - 1) {
        id = 1;
    }

    return ++id;
}
