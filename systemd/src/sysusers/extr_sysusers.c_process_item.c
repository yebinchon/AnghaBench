
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; int id_set_strict; int gid; int gid_set; int todo_group; int name; } ;
typedef TYPE_1__ Item ;




 int add_group (TYPE_1__*) ;
 int add_user (TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int assert_not_reached (char*) ;
 int groups ;
 TYPE_1__* ordered_hashmap_get (int ,int ) ;

__attribute__((used)) static int process_item(Item *i) {
        int r;

        assert(i);

        switch (i->type) {

        case 128: {
                Item *j;

                j = ordered_hashmap_get(groups, i->name);
                if (j && j->todo_group) {



                        i->gid_set = j->gid_set;
                        i->gid = j->gid;
                        i->id_set_strict = 1;
                } else {
                        r = add_group(i);
                        if (r < 0)
                                return r;
                }

                return add_user(i);
        }

        case 129:
                return add_group(i);

        default:
                assert_not_reached("Unknown item type");
        }
}
