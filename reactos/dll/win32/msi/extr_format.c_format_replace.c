
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_7__ {int len; char* deformatted; int n; } ;
struct TYPE_6__ {int len; int type; int n; void* nonprop; void* propfound; } ;
typedef char* LPWSTR ;
typedef TYPE_1__ FORMSTR ;
typedef TYPE_2__ FORMAT ;
typedef int DWORD ;
typedef void* BOOL ;


 int lstrlenW (char*) ;
 int memcpy (char*,char*,int) ;
 char* msi_alloc (int) ;
 TYPE_1__* msi_alloc_zero (int) ;
 int msi_free (char*) ;

__attribute__((used)) static FORMSTR *format_replace( FORMAT *format, BOOL propfound, BOOL nonprop,
                                int oldsize, int type, WCHAR *replace, int len )
{
    FORMSTR *ret;
    LPWSTR str, ptr;
    DWORD size = 0;
    int n;

    if (replace)
    {
        if (!len)
            size = 1;
        else
            size = len;
    }

    size -= oldsize;
    size = format->len + size + 1;

    if (size <= 1)
    {
        msi_free(format->deformatted);
        format->deformatted = ((void*)0);
        format->len = 0;
        return ((void*)0);
    }

    str = msi_alloc(size * sizeof(WCHAR));
    if (!str)
        return ((void*)0);

    str[0] = '\0';
    memcpy(str, format->deformatted, format->n * sizeof(WCHAR));
    n = format->n;

    if (replace)
    {
        if (!len) str[n++] = 0;
        else
        {
            memcpy( str + n, replace, len * sizeof(WCHAR) );
            n += len;
            str[n] = 0;
        }
    }

    ptr = &format->deformatted[format->n + oldsize];
    memcpy(&str[n], ptr, (lstrlenW(ptr) + 1) * sizeof(WCHAR));

    msi_free(format->deformatted);
    format->deformatted = str;
    format->len = size - 1;


    if (replace && !len)
        format->n++;

    if (!replace)
        return ((void*)0);

    ret = msi_alloc_zero(sizeof(FORMSTR));
    if (!ret)
        return ((void*)0);

    ret->len = len;
    ret->type = type;
    ret->n = format->n;
    ret->propfound = propfound;
    ret->nonprop = nonprop;

    return ret;
}
