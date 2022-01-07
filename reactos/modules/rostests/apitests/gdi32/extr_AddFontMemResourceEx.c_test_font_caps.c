
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tm ;
typedef int name ;
struct TYPE_6__ {scalar_t__ FontName; } ;
typedef TYPE_1__ fnt_res ;
struct TYPE_8__ {char* ResourceName; TYPE_1__* res; } ;
struct TYPE_7__ {int tmCharSet; int tmPitchAndFamily; int tmStruckOut; int tmUnderlined; int tmItalic; int tmBreakChar; int tmDefaultChar; int tmLastChar; int tmFirstChar; int tmDigitizedAspectY; int tmDigitizedAspectX; int tmOverhang; int tmWeight; int tmMaxCharWidth; int tmAveCharWidth; int tmExternalLeading; int tmInternalLeading; int tmDescent; int tmAscent; int tmHeight; int member_0; } ;
typedef TYPE_2__ TEXTMETRICA ;
typedef int HGDIOBJ ;
typedef int HFONT ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int CLIP_DEFAULT_PRECIS ;
 int CreateFontA (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__) ;
 int DEFAULT_CHARSET ;
 int DEFAULT_PITCH ;
 int DEFAULT_QUALITY ;
 int DeleteObject (int ) ;
 int FALSE ;
 int FW_DONTCARE ;
 int GetLastError () ;
 scalar_t__ GetTextFaceA (int ,int,char*) ;
 scalar_t__ GetTextMetricsA (int ,TYPE_2__*) ;
 int OUT_DEFAULT_PRECIS ;
 int SelectObject (int ,int ) ;
 int SetLastError (int) ;
 int memset (TYPE_2__*,int,int) ;
 int ok (int,char*,char const*,char const*,...) ;
 int ok_hex2 (int ) ;
 int ok_int2 (int ) ;
 int strcmp (char*,scalar_t__) ;
 TYPE_3__* test_data ;

__attribute__((used)) static void test_font_caps(HDC hdc, int test_index)
{
    HGDIOBJ old;
    TEXTMETRICA tm = { 0 };
    char name[64];
    BOOL ret;
    HFONT font;
    int n;
    const char* test_name = test_data[test_index].ResourceName;

    for (n = 0; test_data[test_index].res[n].FontName; ++n)
    {
        fnt_res* res = test_data[test_index].res + n;
        font = CreateFontA(0, 0, 0, 0, FW_DONTCARE, FALSE, FALSE, FALSE, DEFAULT_CHARSET,
                     OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, DEFAULT_PITCH, res->FontName);

        if (font)
        {
            old = SelectObject(hdc, font);

            memset(&tm, 0xaa, sizeof(tm));
            ret = GetTextMetricsA(hdc, &tm);
            ok(ret, "GetTextMetricsA() for %s/%s\n", test_name, res->FontName);

            SetLastError(0xdeadbeef);
            ret = GetTextFaceA(hdc, sizeof(name), name);
            ok(ret, "GetTextFaceA error %lu for %s/%s\n", GetLastError(), test_name, res->FontName);
            if (ret)
            {
                ok(!strcmp(name, res->FontName), "FontName was %s, expected %s for %s/%s", name, res->FontName, test_name, res->FontName);
            }

            ok_int2(tm.tmHeight);
            ok_int2(tm.tmAscent);
            ok_int2(tm.tmDescent);
            ok_int2(tm.tmInternalLeading);
            ok_int2(tm.tmExternalLeading);
            ok_int2(tm.tmAveCharWidth);
            ok_int2(tm.tmMaxCharWidth);
            ok_int2(tm.tmWeight);
            ok_int2(tm.tmOverhang);
            ok_int2(tm.tmDigitizedAspectX);
            ok_int2(tm.tmDigitizedAspectY);
            ok_int2(tm.tmFirstChar);
            ok_int2(tm.tmLastChar);
            ok_int2(tm.tmDefaultChar);
            ok_int2(tm.tmBreakChar);
            ok_int2(tm.tmItalic);
            ok_int2(tm.tmUnderlined);
            ok_int2(tm.tmStruckOut);
            ok_hex2(tm.tmPitchAndFamily);
            ok_int2(tm.tmCharSet);

            SelectObject(hdc, old);
            DeleteObject(font);
        }
    }
}
