
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int ULONG_PTR ;
struct TYPE_3__ {short x; short y; } ;
typedef TYPE_1__ POINT ;
typedef scalar_t__ LRESULT ;
typedef int LPARAM ;
typedef int HWND ;


 int DefWndTrackScrollBar (int ,int,TYPE_1__) ;
 int DoAppSwitch (int,int ) ;
 int FALSE ;
 int FIXME (char*,int) ;
 int FNID_DEFWINDOWPROC ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ ISITHOOKED (int ) ;
 int IsWindowEnabled (int ) ;
 scalar_t__ LOWORD (int ) ;
 int NtUserMessageCall (int ,int ,int,int ,int ,int ,int ) ;
 int SW_SHOWNORMAL ;
 int WH_CBT ;
 int WM_SYSCOMMAND ;
 int WinExec (char*,int ) ;

LRESULT
DefWndHandleSysCommand(HWND hWnd, WPARAM wParam, LPARAM lParam)
{
  POINT Pt;
  LRESULT lResult;

  if (!IsWindowEnabled( hWnd )) return 0;

  switch (wParam & 0xfff0)
    {
      case 135:
      case 130:

      case 136:
      case 139:
      case 131:
      case 137:
      case 138:
      case 132:
      case 142:
      case 141:
        NtUserMessageCall( hWnd, WM_SYSCOMMAND, wParam, lParam, (ULONG_PTR)&lResult, FNID_DEFWINDOWPROC, FALSE);
        return 0;

      default:
        break;
    }

  if (ISITHOOKED(WH_CBT))
  {
     NtUserMessageCall( hWnd, WM_SYSCOMMAND, wParam, lParam, (ULONG_PTR)&lResult, FNID_DEFWINDOWPROC, FALSE);
     if (lResult) return 0;
  }

  switch (wParam & 0xfff0)
    {

      case 128:
      case 140:
        {
          Pt.x = (short)LOWORD(lParam);
          Pt.y = (short)HIWORD(lParam);
          DefWndTrackScrollBar(hWnd, wParam, Pt);
        }
 break;

      case 129:
        WinExec( "taskman.exe", SW_SHOWNORMAL );
        break;


      case 134:
      case 133:
        DoAppSwitch( wParam, lParam);
        break;

      default:
        FIXME("Unimplemented DefWndHandleSysCommand wParam 0x%x\n",wParam);
        break;
    }

  return(0);
}
