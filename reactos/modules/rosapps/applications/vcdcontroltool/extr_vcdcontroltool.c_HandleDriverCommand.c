
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int WORD ;
typedef int LPARAM ;
typedef int INT_PTR ;


 int DestroyWindow (int ) ;
 int FALSE ;



 int LOWORD (int ) ;
 int StartDriver () ;
 int StopDriver () ;
 int TRUE ;
 int hDriverWnd ;

__attribute__((used)) static
INT_PTR
HandleDriverCommand(WPARAM wParam,
                    LPARAM lParam)
{
    WORD Msg;


    Msg = LOWORD(wParam);
    switch (Msg)
    {
        case 130:
            DestroyWindow(hDriverWnd);
            return TRUE;

        case 129:
            StartDriver();
            return TRUE;

        case 128:
            StopDriver();
            return TRUE;
    }

    return FALSE;
}
