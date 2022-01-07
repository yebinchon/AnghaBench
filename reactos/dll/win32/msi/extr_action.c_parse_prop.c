
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum parse_state { ____Placeholder_parse_state } parse_state ;
typedef char WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;




__attribute__((used)) static int parse_prop( const WCHAR *str, WCHAR *value, int *quotes )
{
    enum parse_state state = 130;
    const WCHAR *p;
    WCHAR *out = value;
    BOOL ignore, in_quotes = FALSE;
    int count = 0, len = 0;

    for (p = str; *p; p++)
    {
        ignore = FALSE;
        switch (state)
        {
        case 128:
            switch (*p)
            {
            case ' ':
                in_quotes = TRUE;
                ignore = TRUE;
                len++;
                break;
            case '"':
                state = 130;
                if (in_quotes && p[1] != '\"') count--;
                else count++;
                break;
            default:
                state = 129;
                in_quotes = TRUE;
                len++;
                break;
            }
            break;

        case 129:
            switch (*p)
            {
            case '"':
                state = 130;
                if (in_quotes) count--;
                else count++;
                break;
            case ' ':
                state = 128;
                if (!count) goto done;
                in_quotes = TRUE;
                len++;
                break;
            default:
                if (count) in_quotes = TRUE;
                len++;
                break;
            }
            break;

        case 130:
            switch (*p)
            {
            case '"':
                if (in_quotes && p[1] != '\"') count--;
                else count++;
                break;
            case ' ':
                state = 128;
                if (!count || (count > 1 && !len)) goto done;
                in_quotes = TRUE;
                len++;
                break;
            default:
                state = 129;
                if (count) in_quotes = TRUE;
                len++;
                break;
            }
            break;

        default: break;
        }
        if (!ignore) *out++ = *p;
        if (!count) in_quotes = FALSE;
    }

done:
    if (!len) *value = 0;
    else *out = 0;

    *quotes = count;
    return p - str;
}
