
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_eas_event_code; struct TYPE_4__* psz_nature_of_activation; struct TYPE_4__* psz_alert_text; } ;
typedef TYPE_1__ scte18_cea_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void scte18_cea_Free( scte18_cea_t *p_cea )
{
    free( p_cea->psz_alert_text );
    free( p_cea->psz_nature_of_activation );
    free( p_cea->psz_eas_event_code );
    free( p_cea );
}
