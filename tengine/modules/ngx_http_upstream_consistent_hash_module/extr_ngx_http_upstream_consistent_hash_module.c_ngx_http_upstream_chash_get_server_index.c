
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int hash; } ;
typedef TYPE_1__ ngx_http_upstream_chash_server_t ;



__attribute__((used)) static uint32_t
ngx_http_upstream_chash_get_server_index(
    ngx_http_upstream_chash_server_t *servers, uint32_t n, uint32_t hash)
{
    uint32_t low, hight, mid;

    low = 1;
    hight = n;

    while (low < hight) {
        mid = (low + hight) >> 1;
        if (servers[mid].hash == hash) {
            return mid;

        } else if (servers[mid].hash < hash) {
            low = mid + 1;

        } else {
            hight = mid;
        }
    }

    if (low == n && servers[low].hash < hash) {
      return 1;
    }

    return low;
}
