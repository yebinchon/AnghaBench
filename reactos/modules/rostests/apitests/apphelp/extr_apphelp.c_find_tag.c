
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t TAG ;
typedef size_t DWORD ;


 int g_AttrInfoSize ;
 size_t* g_Tags_26 ;
 size_t* g_Tags_28 ;

__attribute__((used)) static DWORD find_tag(TAG tag)
{
    DWORD n;
    TAG* allTags;
    switch (g_AttrInfoSize)
    {
    case 26:
        allTags = g_Tags_26;
        break;
    case 28:
        allTags = g_Tags_28;
        break;
    default:
        return ~0;
    }

    for (n = 0; n < allTags[n]; ++n)
    {
        if (allTags[n] == tag)
            return n;
    }
    return ~0;
}
