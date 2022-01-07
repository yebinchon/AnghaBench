
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int psz_uri; } ;
typedef TYPE_1__ input_item_slave_t ;


 int strcmp (int ,int ) ;
 int strcoll (int ,int ) ;

__attribute__((used)) static int slave_strcmp( const void *a, const void *b )
{
    const input_item_slave_t *p_slave0 = *((const input_item_slave_t **) a);
    const input_item_slave_t *p_slave1 = *((const input_item_slave_t **) b);

    if( p_slave0 == ((void*)0) || p_slave1 == ((void*)0) )
        return 0;





    return strcmp( p_slave0->psz_uri, p_slave1->psz_uri );

}
