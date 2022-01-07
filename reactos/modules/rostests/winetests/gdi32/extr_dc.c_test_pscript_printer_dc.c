
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int query ;
typedef int buf ;
typedef int LPCSTR ;
typedef int HDC ;
typedef int DWORD ;


 int CLOSECHANNEL ;
 int DOWNLOADFACE ;
 int DOWNLOADHEADER ;
 int DeleteDC (int ) ;
 int Escape (int ,int ,int,int ,int *) ;
 int ExtEscape (int ,int,int ,int *,int,char*) ;
 int FALSE ;
 int GETFACENAME ;
 int OPENCHANNEL ;
 int POSTSCRIPT_PASSTHROUGH ;
 int QUERYESCSUPPORT ;
 int create_printer_dc (int,int ) ;
 int is_postscript_printer (int ) ;
 int ok (int,char*) ;
 int print_something (int ) ;
 int skip (char*) ;
 int trace (char*,char*) ;

__attribute__((used)) static void test_pscript_printer_dc(void)
{
    HDC hdc;
    char buf[256];
    DWORD query, ret;

    hdc = create_printer_dc(100, FALSE);

    if (!hdc) return;

    if (!is_postscript_printer(hdc))
    {
        skip("Default printer is not a PostScript device\n");
        DeleteDC( hdc );
        return;
    }

    query = GETFACENAME;
    ret = Escape(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, ((void*)0));
    ok(!ret, "GETFACENAME is supported\n");

    query = DOWNLOADFACE;
    ret = Escape(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, ((void*)0));
    ok(ret == 1, "DOWNLOADFACE is not supported\n");

    query = OPENCHANNEL;
    ret = Escape(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, ((void*)0));
    ok(ret == 1, "OPENCHANNEL is not supported\n");

    query = DOWNLOADHEADER;
    ret = Escape(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, ((void*)0));
    ok(ret == 1, "DOWNLOADHEADER is not supported\n");

    query = CLOSECHANNEL;
    ret = Escape(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, ((void*)0));
    ok(ret == 1, "CLOSECHANNEL is not supported\n");

    query = POSTSCRIPT_PASSTHROUGH;
    ret = Escape(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, ((void*)0));
    ok(ret == 1, "POSTSCRIPT_PASSTHROUGH is not supported\n");

    ret = ExtEscape(hdc, GETFACENAME, 0, ((void*)0), sizeof(buf), buf);
    ok(ret == 1, "GETFACENAME failed\n");
    trace("face name: %s\n", buf);

    print_something(hdc);

    DeleteDC(hdc);
}
