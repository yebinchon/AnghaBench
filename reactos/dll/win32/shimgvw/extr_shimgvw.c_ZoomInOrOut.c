
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t INT ;
typedef scalar_t__ BOOL ;


 size_t ARRAYSIZE (scalar_t__*) ;
 int FALSE ;
 int IDC_ZOOMM ;
 int IDC_ZOOMP ;
 int InvalidateRect (int ,int *,int ) ;
 scalar_t__ MAX_ZOOM ;
 scalar_t__ MIN_ZOOM ;
 int SendMessage (int ,int ,int ,int ) ;
 int TB_ENABLEBUTTON ;
 int TRUE ;
 scalar_t__ ZoomPercents ;
 scalar_t__* ZoomSteps ;
 int hDispWnd ;
 int hToolBar ;

__attribute__((used)) static void ZoomInOrOut(BOOL bZoomIn)
{
    INT i;

    if (bZoomIn)
    {

        for (i = 0; i < ARRAYSIZE(ZoomSteps); ++i)
        {
            if (ZoomPercents < ZoomSteps[i])
                break;
        }
        if (i == ARRAYSIZE(ZoomSteps))
            ZoomPercents = MAX_ZOOM;
        else
            ZoomPercents = ZoomSteps[i];


        SendMessage(hToolBar, TB_ENABLEBUTTON, IDC_ZOOMM, TRUE);
        if (ZoomPercents >= MAX_ZOOM)
            SendMessage(hToolBar, TB_ENABLEBUTTON, IDC_ZOOMP, FALSE);
        else
            SendMessage(hToolBar, TB_ENABLEBUTTON, IDC_ZOOMP, TRUE);
    }
    else
    {

        for (i = ARRAYSIZE(ZoomSteps); i > 0; )
        {
            --i;
            if (ZoomSteps[i] < ZoomPercents)
                break;
        }
        if (i < 0)
            ZoomPercents = MIN_ZOOM;
        else
            ZoomPercents = ZoomSteps[i];


        SendMessage(hToolBar, TB_ENABLEBUTTON, IDC_ZOOMP, TRUE);
        if (ZoomPercents <= MIN_ZOOM)
            SendMessage(hToolBar, TB_ENABLEBUTTON, IDC_ZOOMM, FALSE);
        else
            SendMessage(hToolBar, TB_ENABLEBUTTON, IDC_ZOOMM, TRUE);
    }


    InvalidateRect(hDispWnd, ((void*)0), TRUE);
}
