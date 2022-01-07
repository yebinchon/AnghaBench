
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int next; int current; } ;
typedef TYPE_1__ cc_storage_t ;


 int cc_Exit (int *) ;
 int free (TYPE_1__*) ;

void cc_storage_delete( cc_storage_t *p_ccs )
{
    cc_Exit( &p_ccs->current );
    cc_Exit( &p_ccs->next );
    free( p_ccs );
}
