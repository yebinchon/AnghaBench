
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_3__ {scalar_t__ fourcc; int guid; } ;
typedef TYPE_1__ pair_format_guid ;
typedef int GUID ;


 scalar_t__ IsEqualGUID (int ,int const*) ;

__attribute__((used)) static vlc_fourcc_t GUIDToFormat(const pair_format_guid table[], const GUID* guid)
{
    for (int i = 0; table[i].fourcc; ++i)
        if (IsEqualGUID(table[i].guid, guid))
            return table[i].fourcc;

    return 0;
}
