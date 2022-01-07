
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;
typedef int HBITMAP ;


 int BLACK_PEN ;
 int BitBlt (int ,int ,int ,scalar_t__,scalar_t__,int ,scalar_t__,int ,int ) ;
 int CreateCompatibleBitmap (int ,scalar_t__,scalar_t__) ;
 int CreateCompatibleDC (int ) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int GetStockObject (int ) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int LineTo (int ,scalar_t__,scalar_t__) ;
 int LoadBitmapW (int ,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int MoveToEx (int ,scalar_t__,int ,int *) ;
 int OBM_OLD_CLOSE ;
 int SM_CXSIZE ;
 int SM_CYSIZE ;
 int SRCCOPY ;
 int SelectObject (int ,int ) ;

__attribute__((used)) static HBITMAP CreateMDIMenuBitmap(void)
{
 HDC hDCSrc = CreateCompatibleDC(0);
 HDC hDCDest = CreateCompatibleDC(hDCSrc);
 HBITMAP hbClose = LoadBitmapW(0, MAKEINTRESOURCEW(OBM_OLD_CLOSE) );
 HBITMAP hbCopy;
 HBITMAP hobjSrc, hobjDest;

 hobjSrc = SelectObject(hDCSrc, hbClose);
 hbCopy = CreateCompatibleBitmap(hDCSrc,GetSystemMetrics(SM_CXSIZE),GetSystemMetrics(SM_CYSIZE));
 hobjDest = SelectObject(hDCDest, hbCopy);

 BitBlt(hDCDest, 0, 0, GetSystemMetrics(SM_CXSIZE), GetSystemMetrics(SM_CYSIZE),
          hDCSrc, GetSystemMetrics(SM_CXSIZE), 0, SRCCOPY);

 SelectObject(hDCSrc, hobjSrc);
 DeleteObject(hbClose);
 DeleteDC(hDCSrc);

 hobjSrc = SelectObject( hDCDest, GetStockObject(BLACK_PEN) );

 MoveToEx( hDCDest, GetSystemMetrics(SM_CXSIZE) - 1, 0, ((void*)0) );
 LineTo( hDCDest, GetSystemMetrics(SM_CXSIZE) - 1, GetSystemMetrics(SM_CYSIZE) - 1);

 SelectObject(hDCDest, hobjSrc );
 SelectObject(hDCDest, hobjDest);
 DeleteDC(hDCDest);

 return hbCopy;
}
