
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IHTMLImgElement ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IHTMLImgElement_put_width (int *,int const) ;
 scalar_t__ S_OK ;
 int _test_img_width (unsigned int,int *,int const) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void _test_img_put_width(unsigned line, IHTMLImgElement *img, const LONG width)
{
    HRESULT hres;

    hres = IHTMLImgElement_put_width(img, width);
    ok(hres == S_OK, "put_width failed: %08x\n", hres);

    _test_img_width(line, img, width);
}
