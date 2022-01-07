
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kpe_name; int kpe_module; int kpe_list; int * kpe_proc; int * kpe_owner; } ;
typedef TYPE_1__ kstat_proc_entry_t ;


 int INIT_LIST_HEAD (int *) ;
 int KSTAT_STRLEN ;
 int strncpy (int ,char const*,int ) ;

void
kstat_proc_entry_init(kstat_proc_entry_t *kpep, const char *module,
    const char *name)
{
 kpep->kpe_owner = ((void*)0);
 kpep->kpe_proc = ((void*)0);
 INIT_LIST_HEAD(&kpep->kpe_list);
 strncpy(kpep->kpe_module, module, KSTAT_STRLEN);
 strncpy(kpep->kpe_name, name, KSTAT_STRLEN);
}
