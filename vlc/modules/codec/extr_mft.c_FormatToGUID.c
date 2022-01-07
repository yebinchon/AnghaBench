
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_3__ {scalar_t__ fourcc; int const* guid; } ;
typedef TYPE_1__ pair_format_guid ;
typedef int GUID ;



__attribute__((used)) static const GUID *FormatToGUID(const pair_format_guid table[], vlc_fourcc_t fourcc)
{
    for (int i = 0; table[i].fourcc; ++i)
        if (table[i].fourcc == fourcc)
            return table[i].guid;

    return ((void*)0);
}
