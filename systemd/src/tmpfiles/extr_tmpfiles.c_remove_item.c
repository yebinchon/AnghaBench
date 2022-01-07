
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int path; } ;
typedef TYPE_1__ Item ;


 int ENOENT ;


 int REMOVE_PHYSICAL ;

 int assert (TYPE_1__*) ;
 int glob_item (TYPE_1__*,int ) ;
 int log_debug (char*,char,...) ;
 int log_error_errno (int,char*,int ) ;
 int remove_item_instance ;
 int rm_rf (int ,int ) ;

__attribute__((used)) static int remove_item(Item *i) {
        int r;

        assert(i);

        log_debug("Running remove action for entry %c %s", (char) i->type, i->path);

        switch (i->type) {

        case 128:

                log_debug("rm -rf \"%s\"", i->path);
                r = rm_rf(i->path, REMOVE_PHYSICAL);
                if (r < 0 && r != -ENOENT)
                        return log_error_errno(r, "rm_rf(%s): %m", i->path);

                return 0;

        case 129:
        case 130:
                return glob_item(i, remove_item_instance);

        default:
                return 0;
        }
}
