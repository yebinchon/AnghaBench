
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT_PTR ;
struct TYPE_3__ {int Transparancy; int hSelf; int bOpaque; } ;
typedef int RECT ;
typedef int POINT ;
typedef TYPE_1__* PFLT_WND ;
typedef int LONG_PTR ;


 int FALSE ;
 int GWL_EXSTYLE ;
 int GetCursorPos (int *) ;
 int GetWindowLongPtr (int ,int ) ;
 int GetWindowRect (int ,int *) ;



 int KillTimer (int ,int const) ;
 int LWA_ALPHA ;
 int PtInRect (int *,int ) ;
 int SetLayeredWindowAttributes (int ,int ,int,int ) ;
 int SetTimer (int ,int,int,int *) ;
 int SetWindowLongPtr (int ,int ,int) ;
 int TRUE ;
 int WS_EX_LAYERED ;

__attribute__((used)) static VOID
DoTimer(PFLT_WND FltInfo,
        UINT_PTR idTimer)
{
    switch (idTimer)
    {

        case 130:
        {
            POINT pt;


            if (FltInfo->bOpaque != TRUE)
            {
                KillTimer(FltInfo->hSelf,
                          130);
                break;
            }

            if (GetCursorPos(&pt))
            {
                RECT rect;

                if (GetWindowRect(FltInfo->hSelf,
                                  &rect))
                {
                    if (!PtInRect(&rect,
                                  pt))
                    {
                        KillTimer(FltInfo->hSelf,
                                  130);
                        KillTimer(FltInfo->hSelf,
                                  129);


                        SetTimer(FltInfo->hSelf,
                                 128,
                                 50,
                                 ((void*)0));
                    }
                }
            }
        }
        break;


        case 129:
        {
            SetLayeredWindowAttributes(FltInfo->hSelf,
                                       0,
                                       (255 * FltInfo->Transparancy) / 100,
                                       LWA_ALPHA);


            FltInfo->Transparancy += 5;

            if (FltInfo->Transparancy == 100)
            {
                SetWindowLongPtr(FltInfo->hSelf,
                                 GWL_EXSTYLE,
                                 GetWindowLongPtr(FltInfo->hSelf,
                                                  GWL_EXSTYLE) & ~WS_EX_LAYERED);

                FltInfo->bOpaque = TRUE;

                KillTimer(FltInfo->hSelf,
                          129);
            }
        }
        break;

        case 128:
        {
            LONG_PTR Style;

            Style = GetWindowLongPtr(FltInfo->hSelf,
                                     GWL_EXSTYLE);

            if (Style & ~WS_EX_LAYERED)
            {
                SetWindowLongPtr(FltInfo->hSelf,
                                 GWL_EXSTYLE,
                                 Style | WS_EX_LAYERED);
            }

            FltInfo->Transparancy -= 5;

            if (FltInfo->Transparancy >= 60)
            {

                SetLayeredWindowAttributes(FltInfo->hSelf,
                                           0,
                                           (255 * FltInfo->Transparancy) / 100,
                                           LWA_ALPHA);

                if (FltInfo->Transparancy == 60)
                {
                    FltInfo->bOpaque = FALSE;

                    KillTimer(FltInfo->hSelf,
                              128);
                }

            }
        }
        break;
    }
}
