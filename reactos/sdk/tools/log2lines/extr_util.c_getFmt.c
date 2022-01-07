
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
getFmt(const char *a)
{
    const char *fmt = "%x";

    if (*a == '0')
    {
        switch (*++a)
        {
        case 'x':
            fmt = "%x";
            ++a;
            break;
        case 'd':
            fmt = "%d";
            ++a;
            break;
        default:
            fmt = "%o";
            break;
        }
    }
    return fmt;
}
