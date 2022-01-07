
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int * p_es; scalar_t__ i_es_count; int * p_program_descriptors; scalar_t__ i_program_descriptors; int i_program_number; int i_version; } ;
typedef TYPE_1__ en50221_capmt_info_t ;


 scalar_t__ likely (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static inline en50221_capmt_info_t * en50221_capmt_New( uint8_t i_version, uint16_t i_program )
{
    en50221_capmt_info_t *p_en = malloc( sizeof(*p_en) );
    if( likely(p_en) )
    {
        p_en->i_version = i_version;
        p_en->i_program_number = i_program;
        p_en->i_program_descriptors = 0;
        p_en->p_program_descriptors = ((void*)0);
        p_en->i_es_count = 0;
        p_en->p_es = ((void*)0);
    }
    return p_en;
}
