
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; } ;
typedef TYPE_1__ json_parse_t ;


 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int json_is_invalid_number(json_parse_t *json)
{
    const char *p = json->ptr;


    if (*p == '+')
        return 1;


    if (*p == '-')
        p++;


    if (*p == '0') {
        int ch2 = *(p + 1);

        if ((ch2 | 0x20) == 'x' ||
            ('0' <= ch2 && ch2 <= '9'))
            return 1;

        return 0;
    } else if (*p <= '9') {
        return 0;
    }


    if (!strncasecmp(p, "inf", 3))
        return 1;
    if (!strncasecmp(p, "nan", 3))
        return 1;



    return 0;
}
