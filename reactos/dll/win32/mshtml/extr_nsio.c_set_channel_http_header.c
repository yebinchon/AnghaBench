
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;
typedef int nsresult ;
typedef int nsACString ;
typedef int WCHAR ;
typedef int HRESULT ;


 int NS_ERROR_UNEXPECTED ;
 int NS_OK ;
 scalar_t__ SUCCEEDED (int ) ;
 int heap_free (int *) ;
 int * heap_strdupAtoW (char const*) ;
 int nsACString_GetData (int const*,char const**) ;
 int set_http_header (struct list*,int *,int ,int *,int ) ;
 int strlenW (int *) ;

__attribute__((used)) static nsresult set_channel_http_header(struct list *headers, const nsACString *name_str,
        const nsACString *value_str)
{
    const char *namea, *valuea;
    WCHAR *name, *value;
    HRESULT hres;

    nsACString_GetData(name_str, &namea);
    name = heap_strdupAtoW(namea);
    if(!name)
        return NS_ERROR_UNEXPECTED;

    nsACString_GetData(value_str, &valuea);
    value = heap_strdupAtoW(valuea);
    if(!value) {
        heap_free(name);
        return NS_ERROR_UNEXPECTED;
    }

    hres = set_http_header(headers, name, strlenW(name), value, strlenW(value));

    heap_free(name);
    heap_free(value);
    return SUCCEEDED(hres) ? NS_OK : NS_ERROR_UNEXPECTED;
}
