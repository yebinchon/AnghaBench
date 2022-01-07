
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_offset; int min_type; int min_objectid; } ;
struct btrfs_ioctl_search_header {int offset; TYPE_1__ key; int type; int objectid; } ;
typedef struct btrfs_ioctl_search_args {int offset; TYPE_1__ key; int type; int objectid; } const btrfs_ioctl_search_args ;


 int assert (struct btrfs_ioctl_search_header const*) ;

__attribute__((used)) static void btrfs_ioctl_search_args_set(struct btrfs_ioctl_search_args *args, const struct btrfs_ioctl_search_header *h) {
        assert(args);
        assert(h);

        args->key.min_objectid = h->objectid;
        args->key.min_type = h->type;
        args->key.min_offset = h->offset;
}
