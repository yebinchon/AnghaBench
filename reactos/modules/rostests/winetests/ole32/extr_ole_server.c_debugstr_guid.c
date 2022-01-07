
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; int guid; } ;
typedef int GUID ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ IsEqualIID (int const*,int ) ;
 TYPE_1__* guid_name ;
 char const* wine_dbgstr_guid (int const*) ;

__attribute__((used)) static const char *debugstr_guid(const GUID *guid)
{
    int i;

    if (!guid) return "(null)";

    for (i = 0; i < ARRAY_SIZE(guid_name); i++)
    {
        if (IsEqualIID(guid, guid_name[i].guid))
            return guid_name[i].name;
    }

    return wine_dbgstr_guid(guid);
}
