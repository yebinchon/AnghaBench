
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* glyph_ids; } ;
typedef TYPE_1__ cmap_format_0 ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL get_first_last_from_cmap0(void *ptr, DWORD *first, DWORD *last)
{
    int i;
    cmap_format_0 *cmap = (cmap_format_0*)ptr;

    *first = 256;

    for(i = 0; i < 256; i++)
    {
        if(cmap->glyph_ids[i] == 0) continue;
        *last = i;
        if(*first == 256) *first = i;
    }
    if(*first == 256) return FALSE;
    return TRUE;
}
