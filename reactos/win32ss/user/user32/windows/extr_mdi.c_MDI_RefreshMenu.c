
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mii ;
typedef int buf ;
typedef char WCHAR ;
typedef int UINT ;
struct TYPE_7__ {int nActiveChildren; scalar_t__ idFirstChild; scalar_t__* child; scalar_t__ hwndActiveChild; int hFrameMenu; int hWindowMenu; } ;
struct TYPE_6__ {int cbSize; int fType; scalar_t__ wID; int fMask; } ;
typedef TYPE_1__ MENUITEMINFOW ;
typedef TYPE_2__ MDICLIENTINFO ;
typedef int LRESULT ;


 int AppendMenuW (int ,int,int,char*) ;
 int CheckMenuItem (int ,int,int ) ;
 int GWLP_ID ;
 int GWL_STYLE ;
 int GetMenuItemCount (int ) ;
 scalar_t__ GetMenuItemInfoW (int ,int,int ,TYPE_1__*) ;
 int GetWindowLongPtrW (scalar_t__,int ) ;
 int IDS_MDI_MOREWINDOWS ;
 int InternalGetWindowText (scalar_t__,char*,int) ;
 int IsMenu (int ) ;
 int LoadStringW (int ,int ,char*,int) ;
 int MDI_MAXTITLELENGTH ;
 int MDI_MOREWINDOWSLIMIT ;
 int MF_BYPOSITION ;
 int MF_CHECKED ;
 int MF_SEPARATOR ;
 int MF_STRING ;
 int MIIM_ID ;
 int MIIM_TYPE ;
 scalar_t__ RemoveMenu (int ,int,int ) ;
 int SetWindowLongPtrW (scalar_t__,int ,int) ;
 int TRACE (char*,int,...) ;
 int TRUE ;
 int User32Instance ;
 int WARN (char*,int ) ;
 int WS_VISIBLE ;
 int debugstr_w (char*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static LRESULT MDI_RefreshMenu(MDICLIENTINFO *ci)
{
    UINT i, count, visible, id;
    WCHAR buf[MDI_MAXTITLELENGTH];

    TRACE("children %u, window menu %p\n", ci->nActiveChildren, ci->hWindowMenu);

    if (!ci->hWindowMenu)
        return 0;

    if (!IsMenu(ci->hWindowMenu))
    {
        WARN("Window menu handle %p is no longer valid\n", ci->hWindowMenu);
        return 0;
    }





    count = GetMenuItemCount(ci->hWindowMenu);
    for (i = 0; i < count; i++)
    {
        MENUITEMINFOW mii;

        memset(&mii, 0, sizeof(mii));
        mii.cbSize = sizeof(mii);
        mii.fMask = MIIM_TYPE;
        if (GetMenuItemInfoW(ci->hWindowMenu, i, TRUE, &mii))
        {
            if (mii.fType & MF_SEPARATOR)
            {

                memset(&mii, 0, sizeof(mii));
                mii.cbSize = sizeof(mii);
                mii.fMask = MIIM_ID;
                if (GetMenuItemInfoW(ci->hWindowMenu, i + 1, TRUE, &mii))
                {
                    if (mii.wID == ci->idFirstChild)
                    {
                        TRACE("removing %u items including separator\n", count - i);
                        while (RemoveMenu(ci->hWindowMenu, i, MF_BYPOSITION))
                                         ;

                        break;
                    }
                }
            }
        }
    }

    visible = 0;
    for (i = 0; i < ci->nActiveChildren; i++)
    {
        if (GetWindowLongPtrW(ci->child[i], GWL_STYLE) & WS_VISIBLE)
        {
            id = ci->idFirstChild + visible;

            if (visible == MDI_MOREWINDOWSLIMIT)
            {
                LoadStringW(User32Instance, IDS_MDI_MOREWINDOWS, buf, sizeof(buf)/sizeof(WCHAR));
                AppendMenuW(ci->hWindowMenu, MF_STRING, id, buf);
                break;
            }

            if (!visible)

                AppendMenuW(ci->hWindowMenu, MF_SEPARATOR, 0, ((void*)0));

            visible++;

            SetWindowLongPtrW(ci->child[i], GWLP_ID, id);

            buf[0] = '&';
            buf[1] = '0' + visible;
            buf[2] = ' ';
            InternalGetWindowText(ci->child[i], buf + 3, sizeof(buf)/sizeof(WCHAR) - 3);
            TRACE("Adding %p, id %u %s\n", ci->child[i], id, debugstr_w(buf));
            AppendMenuW(ci->hWindowMenu, MF_STRING, id, buf);

            if (ci->child[i] == ci->hwndActiveChild)
                CheckMenuItem(ci->hWindowMenu, id, MF_CHECKED);
        }
        else
            TRACE("MDI child %p is not visible, skipping\n", ci->child[i]);
    }

    return (LRESULT)ci->hFrameMenu;
}
