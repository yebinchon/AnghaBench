#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int UINT_PTR ;
struct TYPE_3__ {int Transparancy; int /*<<< orphan*/  hSelf; int /*<<< orphan*/  bOpaque; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  TYPE_1__* PFLT_WND ;
typedef  int LONG_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  ID_TIMER1 130 
#define  ID_TIMER2 129 
#define  ID_TIMER3 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  LWA_ALPHA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int WS_EX_LAYERED ; 

__attribute__((used)) static VOID
FUNC8(PFLT_WND FltInfo,
        UINT_PTR idTimer)
{
    switch (idTimer)
    {
        /* timer to check if cursor is in toolbar coords */
        case ID_TIMER1:
        {
            POINT pt;

            /* kill timer if toobar is not opaque */
            if (FltInfo->bOpaque != TRUE)
            {
                FUNC3(FltInfo->hSelf,
                          ID_TIMER1);
                break;
            }

            if (FUNC0(&pt))
            {
                RECT rect;

                if (FUNC2(FltInfo->hSelf,
                                  &rect))
                {
                    if (!FUNC4(&rect,
                                  pt))
                    {
                        FUNC3(FltInfo->hSelf,
                                  ID_TIMER1);
                        FUNC3(FltInfo->hSelf,
                                  ID_TIMER2);

                        /* timer to fade out toolbar */
                        FUNC6(FltInfo->hSelf,
                                 ID_TIMER3,
                                 50,
                                 NULL);
                    }
                }
            }
        }
        break;

        /* timer to fade in toolbar */
        case ID_TIMER2:
        {
            FUNC5(FltInfo->hSelf,
                                       0,
                                       (255 * FltInfo->Transparancy) / 100,
                                       LWA_ALPHA);

            /* increment transparancy until it is opaque (100) */
            FltInfo->Transparancy += 5;

            if (FltInfo->Transparancy == 100)
            {
                FUNC7(FltInfo->hSelf,
                                 GWL_EXSTYLE,
                                 FUNC1(FltInfo->hSelf,
                                                  GWL_EXSTYLE) & ~WS_EX_LAYERED);

                FltInfo->bOpaque = TRUE;

                FUNC3(FltInfo->hSelf,
                          ID_TIMER2);
            }
        }
        break;

        case ID_TIMER3:
        {
            LONG_PTR Style;

            Style = FUNC1(FltInfo->hSelf,
                                     GWL_EXSTYLE);

            if (Style & ~WS_EX_LAYERED)
            {
                FUNC7(FltInfo->hSelf,
                                 GWL_EXSTYLE,
                                 Style | WS_EX_LAYERED);
            }

            FltInfo->Transparancy -= 5;

            if (FltInfo->Transparancy >= 60)
            {
                /* set the tranclucency to 60% */
                FUNC5(FltInfo->hSelf,
                                           0,
                                           (255 * FltInfo->Transparancy) / 100,
                                           LWA_ALPHA);

                if (FltInfo->Transparancy == 60)
                {
                    FltInfo->bOpaque = FALSE;

                    FUNC3(FltInfo->hSelf,
                              ID_TIMER3);
                }

            }
        }
        break;
    }
}