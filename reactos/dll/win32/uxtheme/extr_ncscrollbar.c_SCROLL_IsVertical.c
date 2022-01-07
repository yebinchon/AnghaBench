
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;


 int TRUE ;
 int assert (int ) ;

__attribute__((used)) static BOOL SCROLL_IsVertical(HWND hwnd, INT nBar)
{
    switch(nBar)
    {
    case 129:
        return FALSE;
    case 128:
        return TRUE;
    default:
        assert(FALSE);
        return FALSE;
    }
}
