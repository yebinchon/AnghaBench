
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char
*backSpaceEdit(char *s)
{
    char c;
    char *edit = s;
    char *text = s;

    while (( c = *edit++ ))
    {
        switch (c)
        {
        case 128:
            if (text > s)
                text --;
            break;
        default:
            *text++ = c;
        }
    }
    *text = '\0';

    return s;
}
