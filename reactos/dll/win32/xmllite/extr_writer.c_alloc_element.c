
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlwriter ;
struct element {int len; scalar_t__* qname; } ;
typedef char WCHAR ;


 int strcatW (scalar_t__*,char const*) ;
 int strcpyW (scalar_t__*,char const*) ;
 int strlenW (char const*) ;
 void* writer_alloc (int *,int) ;

__attribute__((used)) static struct element *alloc_element(xmlwriter *writer, const WCHAR *prefix, const WCHAR *local)
{
    struct element *ret;
    int len;

    ret = writer_alloc(writer, sizeof(*ret));
    if (!ret) return ret;

    len = prefix ? strlenW(prefix) + 1 : 0;
    len += strlenW(local);

    ret->qname = writer_alloc(writer, (len + 1)*sizeof(WCHAR));
    ret->len = len;
    if (prefix) {
        static const WCHAR colonW[] = {':',0};
        strcpyW(ret->qname, prefix);
        strcatW(ret->qname, colonW);
    }
    else
        ret->qname[0] = 0;
    strcatW(ret->qname, local);

    return ret;
}
