
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int done; scalar_t__ allow_failure; int path; } ;
typedef int OperationMask ;
typedef TYPE_1__ Item ;


 int CHASE_NO_AUTOFS ;
 int CHASE_WARN ;
 int EREMOTE ;
 scalar_t__ FLAGS_SET (int,int ) ;
 int OPERATION_CLEAN ;
 int OPERATION_CREATE ;
 int OPERATION_REMOVE ;
 int arg_root ;
 int assert (TYPE_1__*) ;
 int chase_symlinks (int ,int ,int,int *,int *) ;
 int clean_item (TYPE_1__*) ;
 int create_item (TYPE_1__*) ;
 int log_debug_errno (int,char*,int ) ;
 int log_notice_errno (int,char*,int ) ;
 int remove_item (TYPE_1__*) ;

__attribute__((used)) static int process_item(Item *i, OperationMask operation) {
        OperationMask todo;
        int r, q, p;

        assert(i);

        todo = operation & ~i->done;
        if (todo == 0)
                return 0;

        i->done |= operation;

        r = chase_symlinks(i->path, arg_root, CHASE_NO_AUTOFS|CHASE_WARN, ((void*)0), ((void*)0));
        if (r == -EREMOTE) {
                log_notice_errno(r, "Skipping %s", i->path);
                return 0;
        }
        if (r < 0)
                log_debug_errno(r, "Failed to determine whether '%s' is below autofs, ignoring: %m", i->path);

        r = FLAGS_SET(operation, OPERATION_CREATE) ? create_item(i) : 0;

        if (i->allow_failure)
                r = 0;

        q = FLAGS_SET(operation, OPERATION_REMOVE) ? remove_item(i) : 0;
        p = FLAGS_SET(operation, OPERATION_CLEAN) ? clean_item(i) : 0;

        return r < 0 ? r :
                q < 0 ? q :
                p;
}
