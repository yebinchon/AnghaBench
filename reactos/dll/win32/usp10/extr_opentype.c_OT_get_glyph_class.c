
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_6__ {int ClassFormat; int * ClassValueArray; int GlyphCount; int StartGlyph; } ;
struct TYPE_5__ {TYPE_1__* ClassRangeRecord; int ClassRangeCount; } ;
struct TYPE_4__ {int Class; int End; int Start; } ;
typedef TYPE_2__ OT_ClassDefFormat2 ;
typedef TYPE_3__ OT_ClassDefFormat1 ;


 int ERR (char*,int) ;
 int GET_BE_WORD (int ) ;

__attribute__((used)) static WORD OT_get_glyph_class(const void *table, WORD glyph)
{
    WORD class = 0;
    const OT_ClassDefFormat1 *cf1 = table;

    if (!table) return 0;

    if (GET_BE_WORD(cf1->ClassFormat) == 1)
    {
        if (glyph >= GET_BE_WORD(cf1->StartGlyph))
        {
            int index = glyph - GET_BE_WORD(cf1->StartGlyph);
            if (index < GET_BE_WORD(cf1->GlyphCount))
                class = GET_BE_WORD(cf1->ClassValueArray[index]);
        }
    }
    else if (GET_BE_WORD(cf1->ClassFormat) == 2)
    {
        const OT_ClassDefFormat2 *cf2 = table;
        int i, top;
        top = GET_BE_WORD(cf2->ClassRangeCount);
        for (i = 0; i < top; i++)
        {
            if (glyph >= GET_BE_WORD(cf2->ClassRangeRecord[i].Start) &&
                glyph <= GET_BE_WORD(cf2->ClassRangeRecord[i].End))
            {
                class = GET_BE_WORD(cf2->ClassRangeRecord[i].Class);
                break;
            }
        }
    }
    else
        ERR("Unknown Class Format %i\n",GET_BE_WORD(cf1->ClassFormat));

    return class;
}
