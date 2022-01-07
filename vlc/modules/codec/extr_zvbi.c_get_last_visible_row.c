
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ opacity; } ;
typedef TYPE_1__ vbi_char ;


 scalar_t__ VBI_TRANSPARENT_SPACE ;

__attribute__((used)) static int get_last_visible_row( vbi_char *p_text, int rows, int columns)
{
    for ( int i = rows * columns - 1; i >= 0; i-- )
    {
        if (p_text[i].opacity != VBI_TRANSPARENT_SPACE)
        {
            return i / columns;
        }
    }

    return -1;
}
