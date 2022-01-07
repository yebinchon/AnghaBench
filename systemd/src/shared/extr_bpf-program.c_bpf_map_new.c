
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union bpf_attr {int map_type; size_t key_size; size_t value_size; size_t max_entries; int map_flags; } ;
typedef int uint32_t ;
typedef enum bpf_map_type { ____Placeholder_bpf_map_type } bpf_map_type ;
typedef int attr ;


 int BPF_MAP_CREATE ;
 int bpf (int ,union bpf_attr*,int) ;
 int errno ;

int bpf_map_new(enum bpf_map_type type, size_t key_size, size_t value_size, size_t max_entries, uint32_t flags) {
        union bpf_attr attr = {
                .map_type = type,
                .key_size = key_size,
                .value_size = value_size,
                .max_entries = max_entries,
                .map_flags = flags,
        };
        int fd;

        fd = bpf(BPF_MAP_CREATE, &attr, sizeof(attr));
        if (fd < 0)
                return -errno;

        return fd;
}
