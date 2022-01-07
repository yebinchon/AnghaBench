
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dispex_prop_type_t ;
typedef int DISPID ;


 int DISPEXPROP_BUILTIN ;
 int DISPEXPROP_CUSTOM ;
 int DISPEXPROP_DYNAMIC ;
 scalar_t__ is_custom_dispid (int ) ;
 scalar_t__ is_dynamic_dispid (int ) ;

dispex_prop_type_t get_dispid_type(DISPID id)
{
    if(is_dynamic_dispid(id))
        return DISPEXPROP_DYNAMIC;
    if(is_custom_dispid(id))
        return DISPEXPROP_CUSTOM;
    return DISPEXPROP_BUILTIN;
}
