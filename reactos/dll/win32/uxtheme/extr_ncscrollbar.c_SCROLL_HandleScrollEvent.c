
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_10__ ;


typedef int si ;
typedef int sbi ;
typedef enum SCROLL_HITTEST { ____Placeholder_SCROLL_HITTEST } SCROLL_HITTEST ;
typedef int UINT ;
struct TYPE_32__ {int top; int left; } ;
struct TYPE_33__ {TYPE_1__ rcWindow; } ;
struct TYPE_38__ {TYPE_2__ wi; } ;
struct TYPE_37__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_36__ {int SCROLL_trackHitTest; int SCROLL_TrackingPos; int SCROLL_TrackingVal; scalar_t__ SCROLL_TrackingWin; int SCROLL_MovingThumb; scalar_t__ SCROLL_TrackingBar; scalar_t__ SCROLL_trackVertical; } ;
struct TYPE_31__ {scalar_t__ top; scalar_t__ left; } ;
struct TYPE_35__ {int cbSize; int* rgstate; int xyThumbTop; TYPE_10__ rcScrollBar; } ;
struct TYPE_34__ {int cbSize; int fMask; } ;
typedef TYPE_3__ SCROLLINFO ;
typedef TYPE_4__ SCROLLBARINFO ;
typedef TYPE_5__* PWND_DATA ;
typedef TYPE_6__ POINT ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;
typedef TYPE_7__ DRAW_CONTEXT ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 scalar_t__ GetFocus () ;
 scalar_t__ GetParent (scalar_t__) ;
 int GetScrollBarInfo (scalar_t__,int ,TYPE_4__*) ;
 int GetScrollInfo (scalar_t__,scalar_t__,TYPE_3__*) ;
 int HideCaret (scalar_t__) ;
 int KillSystemTimer (scalar_t__,int ) ;
 int MAKEWPARAM (int ,int) ;
 int OffsetRect (TYPE_10__*,int ,int ) ;
 int ReleaseCapture () ;
 scalar_t__ SB_CTL ;
 int SB_ENDSCROLL ;
 int SB_LINEDOWN ;
 int SB_LINEUP ;
 int SB_PAGEDOWN ;
 int SB_PAGEUP ;
 int SB_THUMBPOSITION ;
 int SB_THUMBTRACK ;


 TYPE_6__ SCROLL_ClipPos (TYPE_10__*,TYPE_6__) ;
 int SCROLL_DrawArrows (TYPE_7__*,TYPE_4__*,scalar_t__,int,int ) ;
 int SCROLL_DrawInterior (TYPE_7__*,TYPE_4__*,int,scalar_t__,int,int) ;
 int SCROLL_DrawMovingThumb (TYPE_5__*,TYPE_7__*,TYPE_4__*,scalar_t__) ;
 int SCROLL_FIRST_DELAY ;
 void* SCROLL_GetThumbVal (TYPE_3__*,TYPE_10__*,scalar_t__,int) ;
 int SCROLL_HitTest (scalar_t__,TYPE_4__*,scalar_t__,TYPE_6__,int ) ;
 scalar_t__ SCROLL_IsVertical (scalar_t__,scalar_t__) ;

 int SCROLL_PtInRectEx (TYPE_10__*,TYPE_6__,scalar_t__) ;
 int SCROLL_REPEAT_DELAY ;

 int SCROLL_TIMER ;


 int SCROLL_getObjectId (scalar_t__) ;
 int SIF_ALL ;
 int STATE_SYSTEM_UNAVAILABLE ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int SetCapture (scalar_t__) ;
 int SetSystemTimer (scalar_t__,int ,int ,int *) ;
 int ShowCaret (scalar_t__) ;
 int TRUE ;
 int ThemeCleanupDrawContext (TYPE_7__*) ;
 int ThemeInitDrawContext (TYPE_7__*,scalar_t__,int ) ;
 int WM_HSCROLL ;




 int WM_VSCROLL ;

__attribute__((used)) static void
SCROLL_HandleScrollEvent(PWND_DATA pwndData, HWND hwnd, INT nBar, UINT msg, POINT pt)
{

    static POINT prevPt;

    static UINT trackThumbPos;

    static INT lastClickPos;

    static INT lastMousePos;

    enum SCROLL_HITTEST hittest;
    HWND hwndOwner, hwndCtl;
    BOOL vertical;
    SCROLLINFO si;
    SCROLLBARINFO sbi;
    DRAW_CONTEXT context;

    si.cbSize = sizeof(si);
    sbi.cbSize = sizeof(sbi);
    si.fMask = SIF_ALL;
    GetScrollInfo(hwnd, nBar, &si);
    GetScrollBarInfo(hwnd, SCROLL_getObjectId(nBar), &sbi);
    vertical = SCROLL_IsVertical(hwnd, nBar);
    if(sbi.rgstate[133] & STATE_SYSTEM_UNAVAILABLE &&
       sbi.rgstate[137] & STATE_SYSTEM_UNAVAILABLE )
    {
        return;
    }

    if ((pwndData->SCROLL_trackHitTest == 135) && (msg != 131))
    return;

    ThemeInitDrawContext(&context, hwnd, 0);


    OffsetRect(&sbi.rcScrollBar, -context.wi.rcWindow.left, -context.wi.rcWindow.top);

    hwndOwner = (nBar == SB_CTL) ? GetParent(hwnd) : hwnd;
    hwndCtl = (nBar == SB_CTL) ? hwnd : 0;

    switch(msg)
    {
      case 131:
          HideCaret(hwnd);
          pwndData->SCROLL_trackVertical = vertical;
          pwndData->SCROLL_trackHitTest = hittest = SCROLL_HitTest( hwnd, &sbi, vertical, pt, FALSE );
          lastClickPos = vertical ? (pt.y - sbi.rcScrollBar.top) : (pt.x - sbi.rcScrollBar.left);
          lastMousePos = lastClickPos;
          trackThumbPos = sbi.xyThumbTop;
          prevPt = pt;
          SetCapture( hwnd );
          break;

      case 129:
          hittest = SCROLL_HitTest( hwnd, &sbi, vertical, pt, TRUE );
          prevPt = pt;
          break;

      case 130:
          hittest = 135;
          ReleaseCapture();

          if (hwnd==GetFocus())
              ShowCaret(hwnd);
          break;

      case 128:
          pt = prevPt;
          hittest = SCROLL_HitTest( hwnd, &sbi, vertical, pt, FALSE );
          break;

      default:
          return;
    }




    switch(pwndData->SCROLL_trackHitTest)
    {
    case 135:
        break;

    case 133:
        if (hittest == pwndData->SCROLL_trackHitTest)
        {
            SCROLL_DrawArrows( &context, &sbi, vertical, pwndData->SCROLL_trackHitTest, 0 );
            if ((msg == 131) || (msg == 128))
            {
                SendMessageW( hwndOwner, vertical ? WM_VSCROLL : WM_HSCROLL,
                                SB_LINEUP, (LPARAM)hwndCtl );
         }

        SetSystemTimer( hwnd, SCROLL_TIMER, (msg == 131) ?
                            SCROLL_FIRST_DELAY : SCROLL_REPEAT_DELAY, ((void*)0) );
        }
        else
        {
            SCROLL_DrawArrows( &context, &sbi, vertical, 0, 0 );
            KillSystemTimer( hwnd, SCROLL_TIMER );
        }

        break;

    case 132:
        SCROLL_DrawInterior( &context, &sbi, sbi.xyThumbTop, vertical, pwndData->SCROLL_trackHitTest, 0);
        if (hittest == pwndData->SCROLL_trackHitTest)
        {
            if ((msg == 131) || (msg == 128))
            {
                SendMessageW( hwndOwner, vertical ? WM_VSCROLL : WM_HSCROLL,
                                SB_PAGEUP, (LPARAM)hwndCtl );
            }
            SetSystemTimer( hwnd, SCROLL_TIMER, (msg == 131) ?
                              SCROLL_FIRST_DELAY : SCROLL_REPEAT_DELAY, ((void*)0) );
        }
        else KillSystemTimer( hwnd, SCROLL_TIMER );
        break;

    case 134:
        if (msg == 131)
        {
            pwndData->SCROLL_TrackingWin = hwnd;
            pwndData->SCROLL_TrackingBar = nBar;
            pwndData->SCROLL_TrackingPos = trackThumbPos + lastMousePos - lastClickPos;
            pwndData->SCROLL_TrackingVal = SCROLL_GetThumbVal( &si, &sbi.rcScrollBar,
                                                     vertical, pwndData->SCROLL_TrackingPos );
         if (!pwndData->SCROLL_MovingThumb)
          SCROLL_DrawMovingThumb(pwndData, &context, &sbi, vertical);
        }
        else if (msg == 130)
        {
         if (pwndData->SCROLL_MovingThumb)
          SCROLL_DrawMovingThumb(pwndData, &context, &sbi, vertical);

            SCROLL_DrawInterior( &context, &sbi, sbi.xyThumbTop, vertical, 0, pwndData->SCROLL_trackHitTest );
        }
        else
        {
            INT pos;

            if (!SCROLL_PtInRectEx( &sbi.rcScrollBar, pt, vertical ))
                pos = lastClickPos;
            else
            {
                pt = SCROLL_ClipPos( &sbi.rcScrollBar, pt );
                pos = vertical ? (pt.y - sbi.rcScrollBar.top) : (pt.x - sbi.rcScrollBar.left);
            }
            if ( (pos != lastMousePos) || (!pwndData->SCROLL_MovingThumb) )
            {
                if (pwndData->SCROLL_MovingThumb)
                    SCROLL_DrawMovingThumb(pwndData, &context, &sbi, vertical);
                lastMousePos = pos;
                pwndData->SCROLL_TrackingPos = trackThumbPos + pos - lastClickPos;
                pwndData->SCROLL_TrackingVal = SCROLL_GetThumbVal( &si, &sbi.rcScrollBar,
                                                         vertical,
                                                         pwndData->SCROLL_TrackingPos );
                SendMessageW( hwndOwner, vertical ? WM_VSCROLL : WM_HSCROLL,
                                MAKEWPARAM( SB_THUMBTRACK, pwndData->SCROLL_TrackingVal),
                                (LPARAM)hwndCtl );
                if (!pwndData->SCROLL_MovingThumb)
                    SCROLL_DrawMovingThumb(pwndData, &context, &sbi, vertical);
            }
        }
        break;

    case 136:
        if (hittest == pwndData->SCROLL_trackHitTest)
        {
            SCROLL_DrawInterior( &context, &sbi, sbi.xyThumbTop, vertical, pwndData->SCROLL_trackHitTest, 0 );
            if ((msg == 131) || (msg == 128))
            {
                SendMessageW( hwndOwner, vertical ? WM_VSCROLL : WM_HSCROLL,
                                SB_PAGEDOWN, (LPARAM)hwndCtl );
            }
            SetSystemTimer( hwnd, SCROLL_TIMER, (msg == 131) ?
                              SCROLL_FIRST_DELAY : SCROLL_REPEAT_DELAY, ((void*)0) );
        }
        else
        {
            SCROLL_DrawInterior( &context, &sbi, sbi.xyThumbTop, vertical, 0, 0 );
            KillSystemTimer( hwnd, SCROLL_TIMER );
        }
        break;

    case 137:
        if (hittest == pwndData->SCROLL_trackHitTest)
        {
            SCROLL_DrawArrows( &context, &sbi, vertical, pwndData->SCROLL_trackHitTest, 0 );
            if ((msg == 131) || (msg == 128))
            {
                SendMessageW( hwndOwner, vertical ? WM_VSCROLL : WM_HSCROLL,
                                SB_LINEDOWN, (LPARAM)hwndCtl );
         }

        SetSystemTimer( hwnd, SCROLL_TIMER, (msg == 131) ?
                            SCROLL_FIRST_DELAY : SCROLL_REPEAT_DELAY, ((void*)0) );
        }
        else
        {
            SCROLL_DrawArrows( &context, &sbi, vertical, 0, 0 );
            KillSystemTimer( hwnd, SCROLL_TIMER );
        }
        break;
    }

    if (msg == 131)
    {

        if (hittest == 134)
        {
            UINT val = SCROLL_GetThumbVal( &si, &sbi.rcScrollBar, vertical,
                                 trackThumbPos + lastMousePos - lastClickPos );
            SendMessageW( hwndOwner, vertical ? WM_VSCROLL : WM_HSCROLL,
                            MAKEWPARAM( SB_THUMBTRACK, val ), (LPARAM)hwndCtl );
        }
    }

    if (msg == 130)
    {
        hittest = pwndData->SCROLL_trackHitTest;
        pwndData->SCROLL_trackHitTest = 135;

        if (hittest == 134)
        {
            UINT val = SCROLL_GetThumbVal( &si, &sbi.rcScrollBar, vertical,
                                 trackThumbPos + lastMousePos - lastClickPos );
            SendMessageW( hwndOwner, vertical ? WM_VSCROLL : WM_HSCROLL,
                            MAKEWPARAM( SB_THUMBPOSITION, val ), (LPARAM)hwndCtl );
        }

        SendMessageW( hwndOwner, vertical ? WM_VSCROLL : WM_HSCROLL,
                          SB_ENDSCROLL, (LPARAM)hwndCtl );


        pwndData->SCROLL_TrackingWin = 0;
    }

    ThemeCleanupDrawContext(&context);
}
