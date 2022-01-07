
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_guid_t ;
struct ASF_Object_Function_entry {int p_id; } ;


 size_t ARRAY_SIZE (struct ASF_Object_Function_entry const*) ;
 struct ASF_Object_Function_entry const* ASF_Object_Function ;
 scalar_t__ guidcmp (int ,int const*) ;

__attribute__((used)) static const struct ASF_Object_Function_entry * ASF_GetObject_Function( const vlc_guid_t *id )
{
    for( size_t i = 0; i < ARRAY_SIZE(ASF_Object_Function); i++ )
    {
        if( guidcmp( ASF_Object_Function[i].p_id, id ) )
            return &ASF_Object_Function[i];
    }
    return ((void*)0);
}
