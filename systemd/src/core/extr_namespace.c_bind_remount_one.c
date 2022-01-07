
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MS_BIND ;
 unsigned long MS_REMOUNT ;
 int errno ;
 scalar_t__ mount (int *,char const*,int *,unsigned long,int *) ;

__attribute__((used)) static int bind_remount_one(const char *path, unsigned long orig_flags, unsigned long new_flags, unsigned long flags_mask) {
        if (mount(((void*)0), path, ((void*)0), (orig_flags & ~flags_mask) | MS_REMOUNT | MS_BIND | new_flags, ((void*)0)) < 0)
                return -errno;

        return 0;
}
