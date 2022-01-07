
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int started; } ;
typedef TYPE_1__ User ;


 int assert (TYPE_1__*) ;
 int user_save_internal (TYPE_1__*) ;

int user_save(User *u) {
        assert(u);

        if (!u->started)
                return 0;

        return user_save_internal(u);
}
