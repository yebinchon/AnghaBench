
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; int path; } ;
typedef TYPE_1__ Item ;
 int assert (TYPE_1__*) ;
 int clean_item_instance (TYPE_1__*,int ) ;
 int glob_item (TYPE_1__*,int (*) (TYPE_1__*,int )) ;
 int log_debug (char*,char,int ) ;

__attribute__((used)) static int clean_item(Item *i) {
        assert(i);

        log_debug("Running clean action for entry %c %s", (char) i->type, i->path);

        switch (i->type) {
        case 135:
        case 134:
        case 133:
        case 132:
        case 128:
        case 129:
        case 136:
                clean_item_instance(i, i->path);
                return 0;
        case 131:
        case 130:
                return glob_item(i, clean_item_instance);
        default:
                return 0;
        }
}
