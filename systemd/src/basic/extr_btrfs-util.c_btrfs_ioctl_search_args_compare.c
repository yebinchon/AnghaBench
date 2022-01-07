
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_offset; int min_offset; int max_type; int min_type; int max_objectid; int min_objectid; } ;
struct btrfs_ioctl_search_args {TYPE_1__ key; } ;


 int CMP (int ,int ) ;
 int assert (struct btrfs_ioctl_search_args const*) ;

__attribute__((used)) static int btrfs_ioctl_search_args_compare(const struct btrfs_ioctl_search_args *args) {
        int r;

        assert(args);



        r = CMP(args->key.min_objectid, args->key.max_objectid);
        if (r != 0)
                return r;

        r = CMP(args->key.min_type, args->key.max_type);
        if (r != 0)
                return r;

        return CMP(args->key.min_offset, args->key.max_offset);
}
