
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; int clsid; } ;
typedef int MSXML_VERSION ;
typedef int GUID ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int ERR (char*,int ) ;
 scalar_t__ IsEqualGUID (int const*,int ) ;
 int MSXML_DEFAULT ;
 TYPE_1__* clsid_versions_table ;
 int debugstr_guid (int const*) ;

__attribute__((used)) static MSXML_VERSION get_msxml_version(const GUID *clsid)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(clsid_versions_table); i++)
        if (IsEqualGUID(clsid, clsid_versions_table[i].clsid))
            return clsid_versions_table[i].version;

    ERR("unknown clsid=%s\n", debugstr_guid(clsid));
    return MSXML_DEFAULT;
}
