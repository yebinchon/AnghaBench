
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_entry; } ;
typedef TYPE_1__ avi_index_t ;


 int free (int ) ;

__attribute__((used)) static void avi_index_Clean( avi_index_t *p_index )
{
    free( p_index->p_entry );
}
