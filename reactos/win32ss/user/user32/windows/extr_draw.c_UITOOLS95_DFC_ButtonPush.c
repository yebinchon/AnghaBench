
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int RECT ;
typedef int * LPRECT ;
typedef int HDC ;
typedef int BOOL ;


 int BF_ADJUST ;
 int BF_MIDDLE ;
 int BF_MONO ;
 int BF_RECT ;
 int BF_SOFT ;
 int COLOR_BTNFACE ;
 int DFCS_ADJUSTRECT ;
 int DFCS_CHECKED ;
 int DFCS_FLAT ;
 int DFCS_MONO ;
 int DFCS_PUSHED ;
 int EDGE_RAISED ;
 int EDGE_SUNKEN ;
 int FillRect (int ,int *,int ) ;
 int GetSysColorBrush (int ) ;
 int InflateRect (int *,int,int) ;
 int IntDrawRectEdge (int ,int *,int,int,int) ;
 int TRUE ;
 int UITOOLS_DrawCheckedRect (int ,int *) ;

__attribute__((used)) static BOOL UITOOLS95_DFC_ButtonPush(HDC dc, LPRECT r, UINT uFlags)
{
    UINT edge;
    RECT myr = *r;

    if(uFlags & (DFCS_PUSHED | DFCS_CHECKED | DFCS_FLAT))
        edge = EDGE_SUNKEN;
    else
        edge = EDGE_RAISED;

    if(uFlags & DFCS_CHECKED)
    {
        if(uFlags & DFCS_MONO)
            IntDrawRectEdge(dc, &myr, edge, BF_MONO|BF_RECT|BF_ADJUST, 1);
        else
            IntDrawRectEdge(dc, &myr, edge, (uFlags&DFCS_FLAT)|BF_RECT|BF_SOFT|BF_ADJUST, 1);

        UITOOLS_DrawCheckedRect( dc, &myr );
    }
    else
    {
        if(uFlags & DFCS_MONO)
        {
            IntDrawRectEdge(dc, &myr, edge, BF_MONO|BF_RECT|BF_ADJUST, 1);
            FillRect(dc, &myr, GetSysColorBrush(COLOR_BTNFACE));
        }
        else
        {
            IntDrawRectEdge(dc, r, edge, (uFlags&DFCS_FLAT) | BF_MIDDLE | BF_RECT | BF_SOFT, 1);
        }
    }


    if(uFlags & DFCS_ADJUSTRECT)
        InflateRect(r, -2, -2);

    return TRUE;
}
