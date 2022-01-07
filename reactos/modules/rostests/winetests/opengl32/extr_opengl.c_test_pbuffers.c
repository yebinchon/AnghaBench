
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HPBUFFERARB ;
typedef int HDC ;


 unsigned int DescribePixelFormat (int ,int ,int ,int *) ;
 int GetPixelFormat (int ) ;
 int MAX_FORMATS ;
 int WGL_DRAW_TO_PBUFFER_ARB ;
 int ok (int,char*,int,int) ;
 int pwglChoosePixelFormatARB (int ,int const*,int *,int,int*,unsigned int*) ;
 scalar_t__ pwglCreatePbufferARB (int ,int,int,int,int*) ;
 int pwglGetPbufferDCARB (scalar_t__) ;
 int pwglReleasePbufferDCARB (scalar_t__,int ) ;
 int skip (char*) ;
 int trace (char*,int) ;

__attribute__((used)) static void test_pbuffers(HDC hdc)
{
    const int iAttribList[] = { WGL_DRAW_TO_PBUFFER_ARB, 1,
                                0 };
    int iFormats[MAX_FORMATS];
    unsigned int nOnscreenFormats;
    unsigned int nFormats;
    int i, res;
    int iPixelFormat = 0;

    nOnscreenFormats = DescribePixelFormat(hdc, 0, 0, ((void*)0));
    res = pwglChoosePixelFormatARB(hdc, iAttribList, ((void*)0), MAX_FORMATS, iFormats, &nFormats);
    if(res <= 0)
    {
        skip("No pbuffer compatible formats found while WGL_ARB_pbuffer is supported\n");
        return;
    }
    trace("nOnscreenFormats: %d\n", nOnscreenFormats);
    trace("Total number of pbuffer capable pixelformats: %d\n", nFormats);


    for(i=0; i < nFormats; i++)
    {

        if(iFormats[i] <= nOnscreenFormats)
        {
            iPixelFormat = iFormats[i];
            trace("Selected iPixelFormat=%d\n", iPixelFormat);
            break;
        }
    }
    if(iPixelFormat != 0)
    {
        HDC pbuffer_hdc;
        int attrib = 0;
        HPBUFFERARB pbuffer = pwglCreatePbufferARB(hdc, iPixelFormat, 640 , 480 , &attrib);
        if(!pbuffer)
            skip("Pbuffer creation failed!\n");


        pbuffer_hdc = pwglGetPbufferDCARB(pbuffer);
        res = GetPixelFormat(pbuffer_hdc);
        ok(res == iPixelFormat, "Unexpected iPixelFormat=%d returned by GetPixelFormat for format %d\n", res, iPixelFormat);
        trace("iPixelFormat returned by GetPixelFormat: %d\n", res);
        trace("PixelFormat from wglChoosePixelFormatARB: %d\n", iPixelFormat);

        pwglReleasePbufferDCARB(pbuffer, pbuffer_hdc);
    }
    else skip("Pbuffer test for onscreen pixelformat skipped as no onscreen format with pbuffer capabilities have been found\n");


    for(i=0, iPixelFormat=0; i<nFormats; i++)
    {
        if(iFormats[i] > nOnscreenFormats)
        {
            iPixelFormat = iFormats[i];
            trace("Selected iPixelFormat: %d\n", iPixelFormat);
            break;
        }
    }

    if(iPixelFormat != 0)
    {
        HDC pbuffer_hdc;
        HPBUFFERARB pbuffer = pwglCreatePbufferARB(hdc, iPixelFormat, 640 , 480 , ((void*)0));
        if(pbuffer)
        {

            pbuffer_hdc = pwglGetPbufferDCARB(pbuffer);
            res = GetPixelFormat(pbuffer_hdc);

            ok(res == 1, "Unexpected iPixelFormat=%d (1 expected) returned by GetPixelFormat for offscreen format %d\n", res, iPixelFormat);
            trace("iPixelFormat returned by GetPixelFormat: %d\n", res);
            trace("PixelFormat from wglChoosePixelFormatARB: %d\n", iPixelFormat);
            pwglReleasePbufferDCARB(pbuffer, hdc);
        }
        else skip("Pbuffer creation failed!\n");
    }
    else skip("Pbuffer test for offscreen pixelformat skipped as no offscreen-only format with pbuffer capabilities has been found\n");
}
