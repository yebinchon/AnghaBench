
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list {int dummy; } ;
typedef int nsresult ;
typedef int nsACString ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ http_header_t ;
typedef char WCHAR ;


 int NS_ERROR_NOT_AVAILABLE ;
 int NS_ERROR_UNEXPECTED ;
 int NS_OK ;
 int TRACE (char*,int ,int ) ;
 int debugstr_a (char const*) ;
 TYPE_1__* find_http_header (struct list*,char*,int ) ;
 int heap_free (char*) ;
 char* heap_strdupAtoW (char const*) ;
 char* heap_strdupWtoA (int ) ;
 int nsACString_GetData (int const*,char const**) ;
 int nsACString_SetData (int *,char*) ;
 int strlenW (char*) ;

__attribute__((used)) static nsresult get_channel_http_header(struct list *headers, const nsACString *header_name_str,
        nsACString *_retval)
{
    const char *header_namea;
    http_header_t *header;
    WCHAR *header_name;
    char *data;

    nsACString_GetData(header_name_str, &header_namea);
    header_name = heap_strdupAtoW(header_namea);
    if(!header_name)
        return NS_ERROR_UNEXPECTED;

    header = find_http_header(headers, header_name, strlenW(header_name));
    heap_free(header_name);
    if(!header)
        return NS_ERROR_NOT_AVAILABLE;

    data = heap_strdupWtoA(header->data);
    if(!data)
        return NS_ERROR_UNEXPECTED;

    TRACE("%s -> %s\n", debugstr_a(header_namea), debugstr_a(data));
    nsACString_SetData(_retval, data);
    heap_free(data);
    return NS_OK;
}
