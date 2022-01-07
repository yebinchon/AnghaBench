
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_3__ {int const* schema; int name; } ;
typedef int GUID ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int GUID_MetadataFormatXMP ;
 int GUID_MetadataFormatXMPStruct ;
 int IsEqualGUID (int const*,int *) ;
 int lstrcmpW (int ,int const*) ;
 TYPE_1__* name2schema ;

__attribute__((used)) static const WCHAR *map_shortname_to_schema(const GUID *format, const WCHAR *name)
{
    UINT i;




    if (!IsEqualGUID(format, &GUID_MetadataFormatXMP) &&
        !IsEqualGUID(format, &GUID_MetadataFormatXMPStruct))
        return ((void*)0);

    for (i = 0; i < ARRAY_SIZE(name2schema); i++)
    {
        if (!lstrcmpW(name2schema[i].name, name))
            return name2schema[i].schema;
    }

    return ((void*)0);
}
