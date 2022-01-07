
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ unit_file_preset; scalar_t__ fragment_path; TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_5__ {int unit_file_scope; } ;


 int assert (TYPE_2__*) ;
 int basename (scalar_t__) ;
 scalar_t__ unit_file_query_preset (int ,int *,int ) ;

int unit_get_unit_file_preset(Unit *u) {
        assert(u);

        if (u->unit_file_preset < 0 && u->fragment_path)
                u->unit_file_preset = unit_file_query_preset(
                                u->manager->unit_file_scope,
                                ((void*)0),
                                basename(u->fragment_path));

        return u->unit_file_preset;
}
