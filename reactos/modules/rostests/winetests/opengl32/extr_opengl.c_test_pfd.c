
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIXELFORMATDESCRIPTOR ;
typedef int HWND ;
typedef int HDC ;


 int ChoosePixelFormat (int ,int const*) ;
 int CreateWindowA (char*,char*,int ,int,int,int,int,int *,int *,int *,int *) ;
 int DescribePixelFormat (int ,int,int,int *) ;
 int DestroyWindow (int ) ;
 int GetDC (int ) ;
 int GetLastError () ;
 int ReleaseDC (int ,int ) ;
 int WS_OVERLAPPEDWINDOW ;
 int memset (int *,int ,int) ;
 int ok (int ,char*,int ) ;

__attribute__((used)) static int test_pfd(const PIXELFORMATDESCRIPTOR *pfd, PIXELFORMATDESCRIPTOR *fmt)
{
    int pf;
    HDC hdc;
    HWND hwnd;

    hwnd = CreateWindowA("static", "Title", WS_OVERLAPPEDWINDOW, 10, 10, 200, 200, ((void*)0), ((void*)0),
            ((void*)0), ((void*)0));
    if (!hwnd)
        return 0;

    hdc = GetDC( hwnd );
    pf = ChoosePixelFormat( hdc, pfd );
    if (pf && fmt)
    {
        memset(fmt, 0, sizeof(*fmt));
        ok(DescribePixelFormat( hdc, pf, sizeof(*fmt), fmt ),
           "DescribePixelFormat failed with error: %u\n", GetLastError());
    }
    ReleaseDC( hwnd, hdc );
    DestroyWindow( hwnd );

    return pf;
}
