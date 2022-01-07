
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLDocument2 ;
typedef int DWORD ;


 int CGID_MSHTML ;
 int IDM_BOLD ;
 int IDM_DELETE ;
 int IDM_FONTNAME ;
 int IDM_FONTSIZE ;
 int IDM_FORECOLOR ;
 int IDM_HORIZONTALLINE ;
 int IDM_INDENT ;
 int IDM_ITALIC ;
 int IDM_JUSTIFYCENTER ;
 int IDM_JUSTIFYLEFT ;
 int IDM_JUSTIFYRIGHT ;
 int IDM_ORDERLIST ;
 int IDM_OUTDENT ;
 int IDM_SELECTALL ;
 int IDM_UNDERLINE ;
 int IDM_UNORDERLIST ;
 int OLECMDF_ENABLED ;
 int * doc_unk ;
 int test_QueryStatus (int *,int *,int ,int) ;

__attribute__((used)) static void test_MSHTML_QueryStatus(IHTMLDocument2 *doc, DWORD cmdf)
{
    IUnknown *unk = doc ? (IUnknown*)doc : doc_unk;

    test_QueryStatus(unk, &CGID_MSHTML, IDM_FONTNAME, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_FONTSIZE, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_SELECTALL, cmdf|OLECMDF_ENABLED);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_BOLD, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_FORECOLOR, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_JUSTIFYCENTER, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_JUSTIFYLEFT, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_JUSTIFYRIGHT, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_ITALIC, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_UNDERLINE, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_HORIZONTALLINE, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_ORDERLIST, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_UNORDERLIST, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_INDENT, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_OUTDENT, cmdf);
    test_QueryStatus(unk, &CGID_MSHTML, IDM_DELETE, cmdf);
}
