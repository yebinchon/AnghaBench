
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * PWSTR ;
typedef int HWND ;


 int ComboBox_AddString (int ,int *) ;
 int UNICODE_NULL ;
 int * wcschr (int *,int) ;

__attribute__((used)) static
VOID
FillComboBox(
    HWND hwnd,
    PWSTR szBuffer)
{
    PWSTR pStart, pEnd;

    pStart = szBuffer;
    for (;;)
    {
        pEnd = wcschr(pStart, L',');
        if (pEnd != ((void*)0))
            *pEnd = UNICODE_NULL;

        ComboBox_AddString(hwnd, pStart);

        if (pEnd == ((void*)0))
            break;

        pStart = pEnd + 1;
    }
}
