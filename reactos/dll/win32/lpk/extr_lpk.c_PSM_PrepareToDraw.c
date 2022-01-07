
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* LPWSTR ;
typedef int* LPINT ;
typedef int* LPCWSTR ;
typedef int INT ;


 int PREFIX ;
 scalar_t__ iswspace (int) ;
 int wcslen (int*) ;

__attribute__((used)) static void PSM_PrepareToDraw(LPCWSTR str, INT count, LPWSTR new_str, LPINT new_count)
{
    int len, i = 0, j = 0;

    while (i < count)
    {
        if (str[i] == PREFIX || (iswspace(str[i]) && str[i] != L' '))
        {
            if (i < count - 1 && str[i + 1] == PREFIX)
                new_str[j++] = str[i++];
            else
                i++;
        }
        else
        {
            new_str[j++] = str[i++];
        }
    }

    new_str[j] = L'\0';
    len = wcslen(new_str);
    *new_count = len;
}
