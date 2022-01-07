
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int next; } ;
typedef TYPE_1__ cc_storage_t ;


 int cc_Flush (int *) ;

void cc_storage_reset( cc_storage_t *p_ccs )
{
    cc_Flush( &p_ccs->next );
}
