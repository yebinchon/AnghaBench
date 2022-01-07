
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* name; scalar_t__ section; TYPE_1__* tunnel; } ;
struct TYPE_6__ {int sessions_by_section; } ;
typedef TYPE_2__ L2tpSession ;


 int free (TYPE_2__*) ;
 int network_config_section_free (scalar_t__) ;
 int ordered_hashmap_remove (int ,TYPE_2__*) ;

__attribute__((used)) static void l2tp_session_free(L2tpSession *s) {
        if (!s)
                return;

        if (s->tunnel && s->section)
                ordered_hashmap_remove(s->tunnel->sessions_by_section, s);

        network_config_section_free(s->section);

        free(s->name);

        free(s);
}
