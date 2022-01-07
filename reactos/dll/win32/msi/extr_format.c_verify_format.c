
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPWSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL verify_format(LPWSTR data)
{
    int count = 0;

    while (*data)
    {
        if (*data == '[' && *(data - 1) != '\\')
            count++;
        else if (*data == ']')
            count--;

        data++;
    }

    if (count > 0)
        return FALSE;

    return TRUE;
}
