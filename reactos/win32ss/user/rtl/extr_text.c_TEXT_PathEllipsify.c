
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int before; int len; int under; int after; } ;
typedef TYPE_1__ ellipsis_data ;
typedef char WCHAR ;
struct TYPE_8__ {int cx; } ;
typedef TYPE_2__ SIZE ;
typedef int HDC ;


 int BACK_SLASH ;
 char* ELLIPSISW ;
 int FORWARD_SLASH ;
 int GetTextExtentExPointW (int ,char*,unsigned int,int,int *,int *,TYPE_2__*) ;
 int GreGetTextExtentExW (int ,char*,unsigned int,int,int *,int *,TYPE_2__*,int ) ;
 int assert (unsigned int) ;
 int memcpy (char*,char*,unsigned int) ;
 int memmove (char*,char*,int) ;
 int strlenW (char*) ;
 char* strrchrW (char*,int ) ;
 char* wcsrchr (char*,int ) ;

__attribute__((used)) static void TEXT_PathEllipsify (HDC hdc, WCHAR *str, unsigned int max_len,
                                unsigned int *len_str, int width, SIZE *size,
                                WCHAR *modstr, ellipsis_data *pellip)
{
    int len_ellipsis;
    int len_trailing;
    int len_under;
    WCHAR *lastBkSlash, *lastFwdSlash, *lastSlash;
    len_ellipsis = strlenW (ELLIPSISW);
    if (!max_len) return;
    if (len_ellipsis >= max_len) len_ellipsis = max_len - 1;
    if (*len_str + len_ellipsis >= max_len)
        *len_str = max_len - len_ellipsis-1;



    str[*len_str] = '\0';




    lastBkSlash = strrchrW (str, BACK_SLASH);
    lastFwdSlash = strrchrW (str, FORWARD_SLASH);

    lastSlash = lastBkSlash > lastFwdSlash ? lastBkSlash : lastFwdSlash;
    if (!lastSlash) lastSlash = str;
    len_trailing = *len_str - (lastSlash - str);


    memmove (lastSlash+len_ellipsis, lastSlash, len_trailing * sizeof(WCHAR));
    memcpy (lastSlash, ELLIPSISW, len_ellipsis*sizeof(WCHAR));
    len_trailing += len_ellipsis;




    len_under = 0;
    for ( ; ; )
    {




        if (!GetTextExtentExPointW (hdc, str, *len_str + len_ellipsis, width,
                                    ((void*)0), ((void*)0), size)) break;

        if (lastSlash == str || size->cx <= width) break;


        memmove (lastSlash-1, lastSlash, len_trailing * sizeof(WCHAR));
        lastSlash--;
        len_under++;

        assert (*len_str);
        (*len_str)--;
    }
    pellip->before = lastSlash-str;
    pellip->len = len_ellipsis;
    pellip->under = len_under;
    pellip->after = len_trailing - len_ellipsis;
    *len_str += len_ellipsis;

    if (modstr)
    {
        memcpy(modstr, str, *len_str * sizeof(WCHAR));
        modstr[*len_str] = '\0';
    }
}
