
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t i_es_count; struct TYPE_4__* p_es; struct TYPE_4__* p_descriptors; struct TYPE_4__* p_program_descriptors; } ;
typedef TYPE_1__ en50221_capmt_info_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static inline void en50221_capmt_Delete( en50221_capmt_info_t *p_en )
{
    free( p_en->p_program_descriptors );
    for( size_t i=0; i<p_en->i_es_count; i++ )
        free( p_en->p_es[i].p_descriptors );
    free( p_en->p_es );
    free( p_en );
}
