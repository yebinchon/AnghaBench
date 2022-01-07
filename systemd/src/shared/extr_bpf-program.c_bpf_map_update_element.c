
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int map_fd; int value; int key; } ;
typedef int attr ;


 int BPF_MAP_UPDATE_ELEM ;
 int PTR_TO_UINT64 (void*) ;
 scalar_t__ bpf (int ,union bpf_attr*,int) ;
 int errno ;

int bpf_map_update_element(int fd, const void *key, void *value) {

        union bpf_attr attr = {
                .map_fd = fd,
                .key = PTR_TO_UINT64(key),
                .value = PTR_TO_UINT64(value),
        };

        if (bpf(BPF_MAP_UPDATE_ELEM, &attr, sizeof(attr)) < 0)
                return -errno;

        return 0;
}
