
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_9__ {int member_0; int member_4; char* member_13; int member_12; int member_11; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_3; int member_2; int member_1; } ;
struct TYPE_8__ {int cx; } ;
struct TYPE_7__ {int tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef TYPE_2__ SIZE ;
typedef int LONG ;
typedef TYPE_3__ LOGFONT ;
typedef int HFONT ;
typedef int HDC ;


 int CreateCompatibleDC (int *) ;
 int CreateFontIndirect (TYPE_3__*) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int GdiGetCharDimensions (int ,TYPE_1__*,int*) ;
 int GetTextExtentPointW (int ,char const*,int,TYPE_2__*) ;
 int SelectObject (int ,int ) ;
 int ok (int,char*,int,int) ;

void Test_GdiGetCharDimensions()
{
 LOGFONT logfont = {-11, 0, 0, 0, 400,
                     0, 0, 0, 0, 0, 0, 0, 0,
                     "MS Shell Dlg 2"};
 HFONT hFont, hOldFont;
 HDC hdc;
 LONG x, y, x2;
 TEXTMETRICW tm;
 SIZE size;
    static const WCHAR alphabet[] = {
        'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q',
        'r','s','t','u','v','w','x','y','z','A','B','C','D','E','F','G','H',
        'I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',0};

 hFont = CreateFontIndirect(&logfont);
 hdc = CreateCompatibleDC(((void*)0));
 hOldFont = SelectObject(hdc, hFont);

 x = GdiGetCharDimensions(hdc, &tm, &y);
    GetTextExtentPointW(hdc, alphabet, 52, &size);
    x2 = (size.cx / 26 + 1) / 2;

    ok(x == x2, "x=%ld, x2=%ld\n", x, x2);
 ok(y == tm.tmHeight, "y = %ld, tm.tmHeight = %ld\n", y, tm.tmHeight);

 SelectObject(hdc, hOldFont);
 DeleteObject(hFont);
 DeleteDC(hdc);
}
