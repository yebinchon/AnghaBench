
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int * p_sys; } ;
typedef TYPE_1__ filter_t ;
typedef int filter_sys_t ;


 int free (int *) ;

__attribute__((used)) static void CloseFilter( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *) p_this;
    filter_sys_t *p_sys = p_filter->p_sys;
    free( p_sys );
}
