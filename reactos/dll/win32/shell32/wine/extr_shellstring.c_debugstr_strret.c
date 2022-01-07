
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uType; } ;
typedef TYPE_1__ STRRET ;






__attribute__((used)) static const char *debugstr_strret(STRRET *s)
{
    switch (s->uType)
    {
        case 128:
            return "STRRET_WSTR";
        case 130:
            return "STRRET_CSTR";
        case 129:
            return "STRRET_OFFSET";
        default:
            return "STRRET_???";
    }
}
