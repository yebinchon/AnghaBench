
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wine_schemaW ;
typedef char WCHAR ;
struct TYPE_4__ {int window; } ;
typedef TYPE_1__ ScriptHost ;
typedef int LPCWSTR ;
typedef int IUri ;
typedef int HTMLScriptElement ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IUri_Release (int *) ;
 int bind_script_to_text (int ,int *,int *,char**) ;
 int create_uri (int,int ,int **) ;
 int heap_free (char*) ;
 int memcmp (int,char const*,int) ;
 int parse_elem_text (TYPE_1__*,int *,char*) ;
 int strlenW (int) ;

__attribute__((used)) static void parse_extern_script(ScriptHost *script_host, HTMLScriptElement *script_elem, LPCWSTR src)
{
    WCHAR *text;
    IUri *uri;
    HRESULT hres;

    static const WCHAR wine_schemaW[] = {'w','i','n','e',':'};

    if(strlenW(src) > sizeof(wine_schemaW)/sizeof(WCHAR) && !memcmp(src, wine_schemaW, sizeof(wine_schemaW)))
        src += sizeof(wine_schemaW)/sizeof(WCHAR);

    hres = create_uri(src, 0, &uri);
    if(FAILED(hres))
        return;

    hres = bind_script_to_text(script_host->window, uri, script_elem, &text);
    IUri_Release(uri);
    if(FAILED(hres) || !text)
        return;

    parse_elem_text(script_host, script_elem, text);

    heap_free(text);
}
