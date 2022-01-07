
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HDC ;
typedef scalar_t__ HBITMAP ;


 int BLACK_PEN ;
 int CLR_INVALID ;
 scalar_t__ CreateBitmap (int,int,int,int,int *) ;
 int * CreateCompatibleDC (int *) ;
 int DC_PEN ;
 int DeleteDC (int *) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int * GetDC (int *) ;
 scalar_t__ GetLastError () ;
 int GetPixel (int *,int,int ) ;
 scalar_t__ GetStockObject (int ) ;
 int LineTo (int *,int,int ) ;
 int MoveToEx (int *,int ,int ,int *) ;
 int RGB (int,int,int) ;
 int ReleaseDC (int ,int *) ;
 scalar_t__ SelectObject (int *,scalar_t__) ;
 int SetDCPenColor (int *,int) ;
 int SetLastError (int ) ;
 int ok (int,char*) ;

void Test_SetDCPenColor()
{
 HDC hScreenDC, hDC;
 HBITMAP hbmp, hbmpOld;


 SetLastError(ERROR_SUCCESS);
 ok(SetDCPenColor(0, RGB(0,0,0)) == CLR_INVALID, "\n");
 ok(GetLastError() == ERROR_INVALID_PARAMETER, "\n");


 hScreenDC = GetDC(((void*)0));
 ok(hScreenDC != 0, "GetDC failed, skipping tests\n");
 if (hScreenDC == ((void*)0)) return;


 SetDCPenColor(hScreenDC, RGB(1,2,3));
 ok(SetDCPenColor(hScreenDC, RGB(4,5,6)) == RGB(1,2,3), "\n");


 hDC = CreateCompatibleDC(hScreenDC);
 ReleaseDC(0, hScreenDC);
 ok(hDC != 0, "CreateCompatibleDC failed, skipping tests\n");
 if (!hDC) return;


 SelectObject(hDC, GetStockObject(DC_PEN));
 ok(SelectObject(hDC, GetStockObject(BLACK_PEN)) == GetStockObject(DC_PEN), "\n");


 SetDCPenColor(hDC, 0x21123456);
 ok(SetDCPenColor(hDC, RGB(0,0,0)) == 0x21123456, "\n");


 SetDCPenColor(hDC, CLR_INVALID);
 ok(SetDCPenColor(hDC, RGB(0,0,0)) == CLR_INVALID, "\n");

 hbmp = CreateBitmap(10, 10, 1, 32, ((void*)0));
 ok(hbmp != 0, "CreateBitmap failed, skipping tests\n");
 if (!hbmp) return;
 hbmpOld = SelectObject(hDC, hbmp);
 SelectObject(hDC, hbmpOld);
 DeleteDC(hDC);
}
