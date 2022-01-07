
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_2__ {scalar_t__ const target; int ascending; } ;
typedef TYPE_1__ FindGlyph_struct ;



__attribute__((used)) static int compare_FindGlyph(const void *a, const void* b)
{
    const FindGlyph_struct *find = (FindGlyph_struct*)a;
    const WORD *idx= (WORD*)b;
    int rc = 0;

    if ( find->target > *idx)
        rc = 1;
    else if (find->target < *idx)
        rc = -1;

    if (!find->ascending)
        rc *= -1;
    return rc;
}
