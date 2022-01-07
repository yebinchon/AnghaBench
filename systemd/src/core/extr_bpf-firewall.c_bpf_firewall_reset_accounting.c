
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EBADF ;
 int MAP_KEY_BYTES ;
 int MAP_KEY_PACKETS ;
 int bpf_map_update_element (int,int *,int *) ;

int bpf_firewall_reset_accounting(int map_fd) {
        uint64_t key, value = 0;
        int r;

        if (map_fd < 0)
                return -EBADF;

        key = MAP_KEY_PACKETS;
        r = bpf_map_update_element(map_fd, &key, &value);
        if (r < 0)
                return r;

        key = MAP_KEY_BYTES;
        return bpf_map_update_element(map_fd, &key, &value);
}
