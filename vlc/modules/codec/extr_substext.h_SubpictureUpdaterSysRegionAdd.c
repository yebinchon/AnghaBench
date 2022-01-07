
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_next; } ;
typedef TYPE_1__ substext_updater_region_t ;



__attribute__((used)) static inline void SubpictureUpdaterSysRegionAdd(substext_updater_region_t *p_prev,
                                                 substext_updater_region_t *p_new)
{
    substext_updater_region_t **pp_next = &p_prev->p_next;
    for(; *pp_next; pp_next = &(*pp_next)->p_next);
    *pp_next = p_new;
}
