
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; int iPixelType; int cColorBits; int cAlphaBits; int cStencilBits; int cAuxBuffers; int dwFlags; int member_25; int member_24; int member_23; int member_22; int member_21; int member_20; int member_19; int member_18; int member_17; int member_16; int member_15; int member_14; int member_13; int member_12; int member_11; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; } ;
typedef TYPE_1__ PIXELFORMATDESCRIPTOR ;


 int PFD_DOUBLEBUFFER_DONTCARE ;
 int PFD_DRAW_TO_WINDOW ;
 int PFD_MAIN_PLANE ;
 int PFD_STEREO_DONTCARE ;
 int PFD_SUPPORT_OPENGL ;
 int PFD_TYPE_RGBA ;
 int ok (int,char*,...) ;
 int test_pfd (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void test_choosepixelformat(void)
{
    PIXELFORMATDESCRIPTOR pfd = {
        sizeof(PIXELFORMATDESCRIPTOR),
        1,
        PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL,
        PFD_TYPE_RGBA,
        0,
        0, 0, 0, 0, 0, 0,
        0,
        0,
        0,
        0, 0, 0, 0,
        0,
        0,
        0,
        PFD_MAIN_PLANE,
        0,
        0, 0, 0
    };
    PIXELFORMATDESCRIPTOR ret_fmt;

    ok( test_pfd(&pfd, ((void*)0)), "Simple pfd failed\n" );
    pfd.dwFlags |= PFD_DOUBLEBUFFER_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_DOUBLEBUFFER_DONTCARE failed\n" );
    pfd.dwFlags |= PFD_STEREO_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_DOUBLEBUFFER_DONTCARE|PFD_STEREO_DONTCARE failed\n" );
    pfd.dwFlags &= ~PFD_DOUBLEBUFFER_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_STEREO_DONTCARE failed\n" );
    pfd.dwFlags &= ~PFD_STEREO_DONTCARE;
    pfd.iPixelType = 32;
    ok( test_pfd(&pfd, &ret_fmt), "Invalid pixel format 32 failed\n" );
    ok( ret_fmt.iPixelType == PFD_TYPE_RGBA, "Expected pixel type PFD_TYPE_RGBA, got %d\n", ret_fmt.iPixelType );
    pfd.iPixelType = 33;
    ok( test_pfd(&pfd, &ret_fmt), "Invalid pixel format 33 failed\n" );
    ok( ret_fmt.iPixelType == PFD_TYPE_RGBA, "Expected pixel type PFD_TYPE_RGBA, got %d\n", ret_fmt.iPixelType );
    pfd.iPixelType = 15;
    ok( test_pfd(&pfd, &ret_fmt), "Invalid pixel format 15 failed\n" );
    ok( ret_fmt.iPixelType == PFD_TYPE_RGBA, "Expected pixel type PFD_TYPE_RGBA, got %d\n", ret_fmt.iPixelType );
    pfd.iPixelType = PFD_TYPE_RGBA;

    pfd.cColorBits = 32;
    ok( test_pfd(&pfd, ((void*)0)), "Simple pfd failed\n" );
    pfd.dwFlags |= PFD_DOUBLEBUFFER_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_DOUBLEBUFFER_DONTCARE failed\n" );
    pfd.dwFlags |= PFD_STEREO_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_DOUBLEBUFFER_DONTCARE|PFD_STEREO_DONTCARE failed\n" );
    pfd.dwFlags &= ~PFD_DOUBLEBUFFER_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_STEREO_DONTCARE failed\n" );
    pfd.dwFlags &= ~PFD_STEREO_DONTCARE;
    pfd.cColorBits = 0;

    pfd.cAlphaBits = 8;
    ok( test_pfd(&pfd, ((void*)0)), "Simple pfd failed\n" );
    pfd.dwFlags |= PFD_DOUBLEBUFFER_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_DOUBLEBUFFER_DONTCARE failed\n" );
    pfd.dwFlags |= PFD_STEREO_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_DOUBLEBUFFER_DONTCARE|PFD_STEREO_DONTCARE failed\n" );
    pfd.dwFlags &= ~PFD_DOUBLEBUFFER_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_STEREO_DONTCARE failed\n" );
    pfd.dwFlags &= ~PFD_STEREO_DONTCARE;
    pfd.cAlphaBits = 0;

    pfd.cStencilBits = 8;
    ok( test_pfd(&pfd, ((void*)0)), "Simple pfd failed\n" );
    pfd.dwFlags |= PFD_DOUBLEBUFFER_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_DOUBLEBUFFER_DONTCARE failed\n" );
    pfd.dwFlags |= PFD_STEREO_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_DOUBLEBUFFER_DONTCARE|PFD_STEREO_DONTCARE failed\n" );
    pfd.dwFlags &= ~PFD_DOUBLEBUFFER_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_STEREO_DONTCARE failed\n" );
    pfd.dwFlags &= ~PFD_STEREO_DONTCARE;
    pfd.cStencilBits = 0;

    pfd.cAuxBuffers = 1;
    ok( test_pfd(&pfd, ((void*)0)), "Simple pfd failed\n" );
    pfd.dwFlags |= PFD_DOUBLEBUFFER_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_DOUBLEBUFFER_DONTCARE failed\n" );
    pfd.dwFlags |= PFD_STEREO_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_DOUBLEBUFFER_DONTCARE|PFD_STEREO_DONTCARE failed\n" );
    pfd.dwFlags &= ~PFD_DOUBLEBUFFER_DONTCARE;
    ok( test_pfd(&pfd, ((void*)0)), "PFD_STEREO_DONTCARE failed\n" );
    pfd.dwFlags &= ~PFD_STEREO_DONTCARE;
    pfd.cAuxBuffers = 0;
}
