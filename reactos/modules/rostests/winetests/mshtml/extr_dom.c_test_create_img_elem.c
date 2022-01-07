
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLImgElement ;
typedef int IHTMLDocument2 ;


 int IHTMLImgElement_Release (int *) ;
 int * create_img_elem (int *,int,int) ;
 int test_img_put_height (int *,int) ;
 int test_img_put_width (int *,int) ;

__attribute__((used)) static void test_create_img_elem(IHTMLDocument2 *doc)
{
    IHTMLImgElement *img;

    img = create_img_elem(doc, 10, 15);

    if(img){
        test_img_put_width(img, 5);
        test_img_put_height(img, 20);

        IHTMLImgElement_Release(img);
        img = ((void*)0);
    }

    img = create_img_elem(doc, -1, -1);

    if(img){
        test_img_put_width(img, 5);
        test_img_put_height(img, 20);

        IHTMLImgElement_Release(img);
    }
}
