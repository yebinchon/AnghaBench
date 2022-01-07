
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct HEADER_TYPE {char* value; int key; } ;
typedef int all ;
typedef scalar_t__ HRESULT ;
typedef int * BSTR ;


 int CP_UTF8 ;
 scalar_t__ IHTMLXMLHttpRequest_getAllResponseHeaders (int ,int **) ;
 scalar_t__ IHTMLXMLHttpRequest_getResponseHeader (int ,int *,int **) ;
 scalar_t__ S_OK ;
 int SysFreeString (int *) ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 int * a2bstr (int ) ;
 int ok (int,char*,...) ;
 int strcat (char*,char*) ;
 int strcmp_wa (int *,char*) ;
 int strcpy (char*,int ) ;
 int * strstr (char*,char*) ;
 int wine_dbgstr_w (int *) ;
 int xhr ;

__attribute__((used)) static void test_header(const struct HEADER_TYPE expect[], int num)
{
    int i;
    BSTR key, text, all_header;
    HRESULT hres;
    char all[4096], buf[512];

    all_header = ((void*)0);
    hres = IHTMLXMLHttpRequest_getAllResponseHeaders(xhr, &all_header);
    ok(hres == S_OK, "getAllResponseHeader failed: %08x\n", hres);
    ok(all_header != ((void*)0), "all_header == NULL\n");

    WideCharToMultiByte(CP_UTF8, 0, all_header, -1, all, sizeof(all), ((void*)0), ((void*)0));
    SysFreeString(all_header);

    for(i = 0; i < num; ++i) {
        text = ((void*)0);
        key = a2bstr(expect[i].key);
        hres = IHTMLXMLHttpRequest_getResponseHeader(xhr, key, &text);
        ok(hres == S_OK, "getResponseHeader failed, got %08x\n", hres);
        ok(text != ((void*)0), "text == NULL\n");
        ok(!strcmp_wa(text, expect[i].value),
            "Expect %s: %s, got %s\n", expect[i].key, expect[i].value, wine_dbgstr_w(text));
        SysFreeString(key);
        SysFreeString(text);

        strcpy(buf, expect[i].key);
        strcat(buf, ": ");
        strcat(buf, expect[i].value);
        ok(strstr(all, buf) != ((void*)0), "AllResponseHeaders(%s) don't have expected substr(%s)\n", all, buf);
    }
}
