
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_meta_type_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ xa9_type; char* metadata; int meta_type; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* xa9typetoextrameta ;
 TYPE_1__* xa9typetometa ;

__attribute__((used)) static bool AtomXA9ToMeta( uint32_t i_type,
    vlc_meta_type_t const** meta_type, char const** meta_key )
{
    *meta_type = ((void*)0);
    *meta_key = ((void*)0);

    for( size_t i = 0; !*meta_type && i < ARRAY_SIZE( xa9typetometa ); ++i )
        if( xa9typetometa[i].xa9_type == i_type )
            *meta_type = &xa9typetometa[i].meta_type;

    for( size_t i = 0; !*meta_key && i < ARRAY_SIZE( xa9typetoextrameta ); ++i )
        if( xa9typetoextrameta[i].xa9_type == i_type )
            *meta_key = xa9typetoextrameta[i].metadata;

    return *meta_type || *meta_key;
}
