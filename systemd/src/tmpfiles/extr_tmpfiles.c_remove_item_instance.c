
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ Item ;


 int ENOENT ;


 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 int REMOVE_SUBVOLUME ;
 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;
 int errno ;
 int log_debug (char*,char const*) ;
 int log_error_errno (int,char*,char const*) ;
 int remove (char const*) ;
 int rm_rf (char const*,int) ;

__attribute__((used)) static int remove_item_instance(Item *i, const char *instance) {
        int r;

        assert(i);

        switch (i->type) {

        case 128:
                if (remove(instance) < 0 && errno != ENOENT)
                        return log_error_errno(errno, "rm(%s): %m", instance);

                break;

        case 129:

                log_debug("rm -rf \"%s\"", instance);
                r = rm_rf(instance, REMOVE_ROOT|REMOVE_SUBVOLUME|REMOVE_PHYSICAL);
                if (r < 0 && r != -ENOENT)
                        return log_error_errno(r, "rm_rf(%s): %m", instance);

                break;

        default:
                assert_not_reached("wut?");
        }

        return 0;
}
