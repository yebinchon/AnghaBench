
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {int p_sys; } ;
typedef TYPE_1__ filter_t ;


 int Flush (TYPE_1__*) ;
 int free (int ) ;

__attribute__((used)) static void Close( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;

    Flush( p_filter );
    free( p_filter->p_sys );
}
