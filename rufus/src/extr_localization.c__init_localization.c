
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; } ;
typedef int BOOL ;


 size_t ARRAYSIZE (TYPE_1__*) ;
 int LOC_HTAB_SIZE ;
 int TRUE ;
 int htab_create (int ,int *) ;
 int htab_loc ;
 int list_init (int *) ;
 TYPE_1__* loc_dlg ;
 int locale_list ;
 int localization_initialized ;

void _init_localization(BOOL reinit) {
 size_t i;
 for (i=0; i<ARRAYSIZE(loc_dlg); i++)
  list_init(&loc_dlg[i].list);
 if (!reinit)
  list_init(&locale_list);
 htab_create(LOC_HTAB_SIZE, &htab_loc);
 localization_initialized = TRUE;
}
