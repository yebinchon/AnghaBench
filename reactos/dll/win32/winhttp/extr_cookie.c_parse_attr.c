
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr {scalar_t__* value; scalar_t__* name; } ;
typedef char WCHAR ;


 int free_attr (struct attr*) ;
 void* heap_alloc (int) ;
 int heap_free (struct attr*) ;
 int memcpy (scalar_t__*,char const*,int) ;

__attribute__((used)) static struct attr *parse_attr( const WCHAR *str, int *used )
{
    const WCHAR *p = str, *q;
    struct attr *attr;
    int len;

    while (*p == ' ') p++;
    q = p;
    while (*q && *q != ' ' && *q != '=' && *q != ';') q++;
    len = q - p;
    if (!len) return ((void*)0);

    if (!(attr = heap_alloc( sizeof(struct attr) ))) return ((void*)0);
    if (!(attr->name = heap_alloc( (len + 1) * sizeof(WCHAR) )))
    {
        heap_free( attr );
        return ((void*)0);
    }
    memcpy( attr->name, p, len * sizeof(WCHAR) );
    attr->name[len] = 0;
    attr->value = ((void*)0);

    p = q;
    while (*p == ' ') p++;
    if (*p++ == '=')
    {
        while (*p == ' ') p++;
        q = p;
        while (*q && *q != ';') q++;
        len = q - p;
        while (len && p[len - 1] == ' ') len--;

        if (!(attr->value = heap_alloc( (len + 1) * sizeof(WCHAR) )))
        {
            free_attr( attr );
            return ((void*)0);
        }
        memcpy( attr->value, p, len * sizeof(WCHAR) );
        attr->value[len] = 0;
    }

    while (*q == ' ') q++;
    if (*q == ';') q++;
    *used = q - str;

    return attr;
}
