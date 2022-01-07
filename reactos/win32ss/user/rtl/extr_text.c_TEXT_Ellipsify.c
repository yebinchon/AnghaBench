
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_5__ {int cx; } ;
typedef TYPE_1__ SIZE ;
typedef int HDC ;


 char* ELLIPSISW ;
 scalar_t__ GetTextExtentExPointW (int ,char*,unsigned int,int,int *,int *,TYPE_1__*) ;
 scalar_t__ GreGetTextExtentExW (int ,char*,unsigned int,int,int *,int *,TYPE_1__*,int ) ;
 int memcpy (char*,char*,unsigned int) ;
 unsigned int strlenW (char*) ;

__attribute__((used)) static void TEXT_Ellipsify (HDC hdc, WCHAR *str, unsigned int max_len,
                            unsigned int *len_str, int width, SIZE *size,
                            WCHAR *modstr,
                            int *len_before, int *len_ellip)
{
    unsigned int len_ellipsis;
    unsigned int lo, mid, hi;
    len_ellipsis = strlenW (ELLIPSISW);
    if (len_ellipsis > max_len) len_ellipsis = max_len;
    if (*len_str > max_len - len_ellipsis)
        *len_str = max_len - len_ellipsis;


    if (*len_str > 0 &&



        GetTextExtentExPointW(hdc, str, *len_str, width, ((void*)0), ((void*)0), size) &&

        size->cx > width)
    {
        for (lo = 0, hi = *len_str; lo < hi; )
        {
            mid = (lo + hi) / 2;



            if (!GetTextExtentExPointW(hdc, str, mid, width, ((void*)0), ((void*)0), size))

                break;
            if (size->cx > width)
                hi = mid;
            else
                lo = mid + 1;
        }
        *len_str = hi;
    }

    for ( ; ; )
    {
        memcpy(str + *len_str, ELLIPSISW, len_ellipsis*sizeof(WCHAR));




        if (!GetTextExtentExPointW (hdc, str, *len_str + len_ellipsis, width,
                                    ((void*)0), ((void*)0), size)) break;

        if (!*len_str || size->cx <= width) break;

        (*len_str)--;
    }
    *len_ellip = len_ellipsis;
    *len_before = *len_str;
    *len_str += len_ellipsis;

    if (modstr)
    {
        memcpy (modstr, str, *len_str * sizeof(WCHAR));
        modstr[*len_str] = '\0';
    }
}
