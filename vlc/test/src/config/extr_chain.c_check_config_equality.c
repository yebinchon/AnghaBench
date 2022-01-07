
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_next; int psz_value; int psz_name; } ;
typedef TYPE_1__ config_chain_t ;


 int assert (int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void check_config_equality( config_chain_t *p_cfg1, config_chain_t *p_cfg2 )
{
    while(p_cfg1 && p_cfg2)
    {
        assert( !strcmp( p_cfg1->psz_name, p_cfg2->psz_name ) &&
                !strcmp( p_cfg1->psz_value, p_cfg2->psz_value ) );

        p_cfg1 = p_cfg1->p_next;
        p_cfg2 = p_cfg2->p_next;
    }
    assert(!p_cfg1 && !p_cfg2);
}
