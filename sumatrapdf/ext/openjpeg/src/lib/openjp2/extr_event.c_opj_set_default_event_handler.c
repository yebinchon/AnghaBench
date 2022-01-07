
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_error_data; int m_warning_data; int m_info_data; void* warning_handler; void* info_handler; void* error_handler; } ;
typedef TYPE_1__ opj_event_mgr_t ;


 void* opj_default_callback ;

void opj_set_default_event_handler(opj_event_mgr_t * p_manager)
{
    p_manager->m_error_data = 00;
    p_manager->m_warning_data = 00;
    p_manager->m_info_data = 00;
    p_manager->error_handler = opj_default_callback;
    p_manager->info_handler = opj_default_callback;
    p_manager->warning_handler = opj_default_callback;
}
