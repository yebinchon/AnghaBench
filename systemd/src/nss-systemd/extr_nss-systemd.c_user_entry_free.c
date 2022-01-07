
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* name; TYPE_1__* data; } ;
typedef TYPE_2__ UserEntry ;
struct TYPE_6__ {int entries; } ;


 int LIST_REMOVE (int ,int ,TYPE_2__*) ;
 int entries ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void user_entry_free(UserEntry *p) {
        if (!p)
                return;

        if (p->data)
                LIST_REMOVE(entries, p->data->entries, p);

        free(p->name);
        free(p);
}
