
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int width; int height; int** message; } ;
struct TYPE_8__ {int right; int left; int bottom; int top; } ;
typedef int TCHAR ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ MATRIX_MESSAGE ;
typedef int HFONT ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int HANDLE ;


 int CreateBitmap (int ,int ,int,int,int ) ;
 int CreateCompatibleDC (int ) ;
 int DT_CALCRECT ;
 int DT_CENTER ;
 int DT_VCENTER ;
 int DT_WORDBREAK ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int DrawText (int ,int *,int,TYPE_1__*,int) ;
 int FillRect (int ,TYPE_1__*,int ) ;
 int GetDC (int *) ;
 scalar_t__ GetPixel (int ,int,int) ;
 int GetStockObject (int ) ;
 int MAXMSG_HEIGHT ;
 int MAXMSG_WIDTH ;
 int OffsetRect (TYPE_1__*,int,int) ;
 int ReleaseDC (int *,int ) ;
 int SelectObject (int ,int ) ;
 int SetRect (TYPE_1__*,int ,int ,int,int ) ;
 int WHITE_BRUSH ;
 int g_hFont ;

void SetMatrixMessage(MATRIX_MESSAGE *msg, HFONT hFont, TCHAR *text)
{
 HDC hdc;
 RECT rect;
 int x, y;

 HDC hdcMessage;
 HBITMAP hbmMessage;

 HANDLE hOldFont, hOldBmp;




 hdc = GetDC(((void*)0));

 hdcMessage = CreateCompatibleDC(hdc);
 hbmMessage = CreateBitmap(MAXMSG_WIDTH, MAXMSG_HEIGHT, 1, 1, 0);
 hOldBmp = SelectObject(hdcMessage, hbmMessage);

 ReleaseDC(((void*)0), hdc);




 SetRect(&rect, 0, 0, msg->width, MAXMSG_HEIGHT);
 FillRect(hdcMessage, &rect, GetStockObject(WHITE_BRUSH));

 hOldFont = SelectObject(hdcMessage, g_hFont);
 DrawText(hdcMessage, text, -1, &rect, DT_CENTER|DT_VCENTER|DT_WORDBREAK|DT_CALCRECT);

 OffsetRect(&rect, (msg->width-(rect.right-rect.left))/2, (msg->height-(rect.bottom-rect.top))/2);
 DrawText(hdcMessage, text, -1, &rect, DT_CENTER|DT_VCENTER|DT_WORDBREAK);




 for(y = 0; y < msg->height; y++)
 {
  for(x = 0; x < msg->width; x++)
  {
   msg->message[x][y] = GetPixel(hdcMessage, x, y) ? 0 : 1;
  }
 }




 SelectObject(hdcMessage, hOldFont);
 SelectObject(hdcMessage, hOldBmp);

 DeleteDC(hdcMessage);
 DeleteObject(hbmMessage);
}
