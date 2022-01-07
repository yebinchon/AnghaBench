
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int modulation; void* inner_fec; void* coderate_lp; void* coderate_hp; } ;
typedef TYPE_1__ scan_list_entry_t ;


 void* SCAN_CODERATE_AUTO ;
 int SCAN_MODULATION_AUTO ;
 TYPE_1__* calloc (int,int) ;
 scalar_t__ likely (TYPE_1__*) ;

__attribute__((used)) static scan_list_entry_t * scan_list_entry_New()
{
    scan_list_entry_t *p_entry = calloc(1, sizeof(scan_list_entry_t));
    if( likely(p_entry) )
    {
        p_entry->coderate_hp = SCAN_CODERATE_AUTO;
        p_entry->coderate_lp = SCAN_CODERATE_AUTO;
        p_entry->inner_fec = SCAN_CODERATE_AUTO;
        p_entry->modulation = SCAN_MODULATION_AUTO;
    }
    return p_entry;
}
