
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_3__ {scalar_t__ target; int ascending; } ;
typedef size_t INT ;
typedef TYPE_1__ FindGlyph_struct ;


 int FALSE ;
 int TRUE ;
 scalar_t__* bsearch (TYPE_1__*,scalar_t__ const*,int,int,int ) ;
 int compare_FindGlyph ;

int USP10_FindGlyphInLogClust(const WORD* pwLogClust, int cChars, WORD target)
{
    FindGlyph_struct fgs;
    WORD *ptr;
    INT k;

    if (pwLogClust[0] < pwLogClust[cChars-1])
        fgs.ascending = TRUE;
    else
        fgs.ascending = FALSE;

    fgs.target = target;
    ptr = bsearch(&fgs, pwLogClust, cChars, sizeof(WORD), compare_FindGlyph);

    if (!ptr)
        return -1;

    for (k = (ptr - pwLogClust)-1; k >= 0 && pwLogClust[k] == target; k--)
    ;
    k++;

    return k;
}
