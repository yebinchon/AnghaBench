
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ uid_set; scalar_t__ uid; scalar_t__ gid_set; scalar_t__ gid; int shell; int home; int description; int gid_path; int uid_path; int name; } ;
typedef TYPE_1__ Item ;


 int assert (TYPE_1__*) ;
 int streq_ptr (int ,int ) ;

__attribute__((used)) static bool item_equal(Item *a, Item *b) {
        assert(a);
        assert(b);

        if (a->type != b->type)
                return 0;

        if (!streq_ptr(a->name, b->name))
                return 0;

        if (!streq_ptr(a->uid_path, b->uid_path))
                return 0;

        if (!streq_ptr(a->gid_path, b->gid_path))
                return 0;

        if (!streq_ptr(a->description, b->description))
                return 0;

        if (a->uid_set != b->uid_set)
                return 0;

        if (a->uid_set && a->uid != b->uid)
                return 0;

        if (a->gid_set != b->gid_set)
                return 0;

        if (a->gid_set && a->gid != b->gid)
                return 0;

        if (!streq_ptr(a->home, b->home))
                return 0;

        if (!streq_ptr(a->shell, b->shell))
                return 0;

        return 1;
}
