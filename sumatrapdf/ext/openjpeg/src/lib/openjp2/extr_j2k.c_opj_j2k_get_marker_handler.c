
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; } ;
typedef TYPE_1__ opj_dec_memory_marker_handler_t ;
typedef scalar_t__ OPJ_UINT32 ;


 TYPE_1__* j2k_memory_marker_handler_tab ;

__attribute__((used)) static const opj_dec_memory_marker_handler_t * opj_j2k_get_marker_handler(
    OPJ_UINT32 p_id)
{
    const opj_dec_memory_marker_handler_t *e;
    for (e = j2k_memory_marker_handler_tab; e->id != 0; ++e) {
        if (e->id == p_id) {
            break;
        }
    }
    return e;
}
