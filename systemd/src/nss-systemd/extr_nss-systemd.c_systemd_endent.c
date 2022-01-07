
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UserEntry ;
struct TYPE_4__ {int * position; int * entries; } ;
typedef TYPE_1__ GetentData ;


 int assert (TYPE_1__*) ;
 int user_entry_free (int *) ;

__attribute__((used)) static void systemd_endent(GetentData *data) {
        UserEntry *p;

        assert(data);

        while ((p = data->entries))
                user_entry_free(p);

        data->position = ((void*)0);
}
