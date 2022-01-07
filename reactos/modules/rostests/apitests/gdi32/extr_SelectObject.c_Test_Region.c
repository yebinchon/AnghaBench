
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT_PTR ;
typedef scalar_t__ HRGN ;


 scalar_t__ COMPLEXREGION ;
 scalar_t__ CombineRgn (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ CreateRectRgn (int,int,int,int) ;
 int DeleteObject (scalar_t__) ;
 int ERROR_SUCCESS ;
 scalar_t__ NULLREGION ;
 int RGN_OR ;
 scalar_t__ SIMPLEREGION ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int SetLastError (int ) ;
 int hdc1 ;
 int ok (int,char*) ;
 int ok_err (int ) ;

__attribute__((used)) static void
Test_Region()
{
    HRGN hrgn, hrgnOld;


 SetLastError(ERROR_SUCCESS);
 hrgn = CreateRectRgn(0,0,0,0);
 hrgnOld = SelectObject(hdc1, hrgn);
 ok((UINT_PTR)hrgnOld == NULLREGION, "\n");
 DeleteObject(hrgn);

 hrgn = CreateRectRgn(0,0,10,10);
 ok((UINT_PTR)SelectObject(hdc1, hrgn) == SIMPLEREGION, "\n");
 hrgnOld = CreateRectRgn(5,5,20,20);
 ok(CombineRgn(hrgn, hrgn, hrgnOld, RGN_OR) == COMPLEXREGION, "\n");
 DeleteObject(hrgnOld);
 ok((UINT_PTR)SelectObject(hdc1, hrgn) == SIMPLEREGION, "\n");
 DeleteObject(hrgn);

 ok_err(ERROR_SUCCESS);
}
