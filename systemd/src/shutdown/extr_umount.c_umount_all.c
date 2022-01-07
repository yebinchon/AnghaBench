
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int*) ;
 int umount_all_once (int*,int) ;

int umount_all(bool *changed, int umount_log_level) {
        bool umount_changed;
        int r;

        assert(changed);




        do {
                umount_changed = 0;

                r = umount_all_once(&umount_changed, umount_log_level);
                if (umount_changed)
                        *changed = 1;
        } while (umount_changed);

        return r;
}
