
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;


 int IHTMLElement_Release (int *) ;
 int TRUE ;
 int * get_elem_by_id (int *,char*,int ) ;
 int test_elem_set_innerhtml (int *,char*) ;
 int test_img_set_src (int *,char*) ;
 int test_img_src (int *,char*,char*) ;

__attribute__((used)) static void test_blocked(IHTMLDocument2 *doc, IHTMLElement *outer_elem)
{
    IHTMLElement *elem;

    test_elem_set_innerhtml((IUnknown*)outer_elem,
            "<img id=\"imgid\" src=\"BLOCKED::http://www.winehq.org/img.png\" />");
    elem = get_elem_by_id(doc, "imgid", TRUE);
    if(elem) {
        test_img_src((IUnknown*)elem, "BLOCKED::", "blocked::http://www.winehq.org/img.png");
        IHTMLElement_Release(elem);
    }

    test_elem_set_innerhtml((IUnknown*)outer_elem,
            "<img id=\"imgid\" src=\"BLOCKE::http://www.winehq.org/img.png\" />");
    elem = get_elem_by_id(doc, "imgid", TRUE);
    if(elem) {
        test_img_src((IUnknown*)elem, "blocke::http://www.winehq.org/img.png", ((void*)0));
        test_img_set_src((IUnknown*)elem, "BLOCKED:http://www.winehq.org/img.png");
        test_img_src((IUnknown*)elem, "blocked:http://www.winehq.org/img.png", ((void*)0));
        test_img_set_src((IUnknown*)elem, "blocked::http://www.winehq.org/img.png");
        test_img_src((IUnknown*)elem, "BLOCKED::", "blocked::http://www.winehq.org/img.png");
        IHTMLElement_Release(elem);
    }
}
