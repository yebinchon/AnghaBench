
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int shell; int home; int description; int gid_path; int uid_path; int name; } ;
typedef TYPE_1__ Item ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static Item* item_free(Item *i) {
        if (!i)
                return ((void*)0);

        free(i->name);
        free(i->uid_path);
        free(i->gid_path);
        free(i->description);
        free(i->home);
        free(i->shell);
        return mfree(i);
}
