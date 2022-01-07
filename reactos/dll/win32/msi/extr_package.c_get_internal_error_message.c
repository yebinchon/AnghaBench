
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; int * text; } ;
typedef int * LPCWSTR ;


 int FIXME (char*,int) ;
 TYPE_1__* internal_errors ;

__attribute__((used)) static LPCWSTR get_internal_error_message(int error)
{
    int i = 0;

    while (internal_errors[i].id != 0)
    {
        if (internal_errors[i].id == error)
            return internal_errors[i].text;
        i++;
    }

    FIXME("missing error message %d\n", error);
    return ((void*)0);
}
