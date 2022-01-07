
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {unsigned int before; scalar_t__ under; int after; int len; } ;
typedef TYPE_1__ ellipsis_data ;
typedef scalar_t__ WCHAR ;
struct TYPE_13__ {scalar_t__ cy; int cx; int member_1; int member_0; } ;
typedef TYPE_2__ SIZE ;
typedef int PULONG ;
typedef int HDC ;
typedef int DWORD ;


 scalar_t__ const ALPHA_PREFIX ;
 scalar_t__ const CR ;
 int DT_END_ELLIPSIS ;
 int DT_EXPANDTABS ;
 int DT_NOPREFIX ;
 int DT_PATH_ELLIPSIS ;
 int DT_SINGLELINE ;
 int DT_WORDBREAK ;
 int DT_WORD_ELLIPSIS ;
 int GetTextExtentExPointW (int ,scalar_t__*,unsigned int,int,int*,int *,TYPE_2__*) ;
 int GreGetTextExtentExW (int ,scalar_t__*,unsigned int,int,int ,int *,TYPE_2__*,int ) ;
 scalar_t__ const KANA_PREFIX ;
 scalar_t__ const LF ;
 scalar_t__ const PREFIX ;
 scalar_t__ const TAB ;
 int TEXT_Ellipsify (int ,scalar_t__*,int,unsigned int*,int,TYPE_2__*,scalar_t__*,int*,int*) ;
 int TEXT_PathEllipsify (int ,scalar_t__*,int,unsigned int*,int,TYPE_2__*,scalar_t__*,TYPE_1__*) ;
 int TEXT_Reprefix (scalar_t__ const*,int,TYPE_1__*) ;
 int TEXT_SkipChars (int*,scalar_t__ const**,int,scalar_t__ const*,int,unsigned int,int) ;
 int TEXT_WordBreak (int ,scalar_t__*,int,unsigned int*,int,int,int,unsigned int*,TYPE_2__*) ;
 int assert (int) ;
 scalar_t__ remainder_is_none_or_newline (int,scalar_t__ const*) ;

__attribute__((used)) static const WCHAR *TEXT_NextLineW( HDC hdc, const WCHAR *str, int *count,
                                 WCHAR *dest, int *len, int width, DWORD format,
                                 SIZE *retsize, int last_line, WCHAR **p_retstr,
                                 int tabwidth, int *pprefix_offset,
                                 ellipsis_data *pellip)
{
    int i = 0, j = 0;
    int plen = 0;
    SIZE size = {0, 0};
    int maxl = *len;
    int seg_i, seg_count, seg_j;
    int max_seg_width;
    int num_fit;
    int word_broken;
    int line_fits;
    unsigned int j_in_seg;
    int ellipsified;
    *pprefix_offset = -1;



    retsize->cy = 0;
    while (*count)
    {



        if (str[i] == TAB && (format & DT_EXPANDTABS))
        {
            plen = ((plen/tabwidth)+1)*tabwidth;
            (*count)--; if (j < maxl) dest[j++] = str[i++]; else i++;
            while (*count && str[i] == TAB)
            {
                plen += tabwidth;
                (*count)--; if (j < maxl) dest[j++] = str[i++]; else i++;
            }
        }




        seg_i = i;
        seg_count = *count;
        seg_j = j;

        while (*count &&
               (str[i] != TAB || !(format & DT_EXPANDTABS)) &&
               ((str[i] != CR && str[i] != LF) || (format & DT_SINGLELINE)))
        {
            if ((format & DT_NOPREFIX) || *count <= 1)
            {
                (*count)--; if (j < maxl) dest[j++] = str[i++]; else i++;
                continue;
            }

     if (str[i] == PREFIX || str[i] == ALPHA_PREFIX) {
                (*count)--, i++;
                if (str[i] == PREFIX)
                {

      (*count)--; if (j < maxl) dest[j++] = str[i++]; else i++;
                }
  else if (*pprefix_offset == -1 || *pprefix_offset >= seg_j)
                {
                    *pprefix_offset = j;
                }




     }
     else if (str[i] == KANA_PREFIX)
            {

                (*count)--, i++;
                (*count)--, i++;
            }
            else
            {
                (*count)--; if (j < maxl) dest[j++] = str[i++]; else i++;
            }
        }






        j_in_seg = j - seg_j;
        max_seg_width = width - plen;



        GetTextExtentExPointW (hdc, dest + seg_j, j_in_seg, max_seg_width, &num_fit, ((void*)0), &size);







        word_broken = 0;
        line_fits = (num_fit >= j_in_seg);
        if (!line_fits && (format & DT_WORDBREAK))
        {
            const WCHAR *s;
            unsigned int chars_used;
            TEXT_WordBreak (hdc, dest+seg_j, maxl-seg_j, &j_in_seg,
                            max_seg_width, format, num_fit, &chars_used, &size);
            line_fits = (size.cx <= max_seg_width);

            TEXT_SkipChars (count, &s, seg_count, str+seg_i, i-seg_i,
                            chars_used, !(format & DT_NOPREFIX));
            i = s - str;
            word_broken = 1;
        }
        pellip->before = j_in_seg;
        pellip->under = 0;
        pellip->after = 0;
        pellip->len = 0;
        ellipsified = 0;
        if (!line_fits && (format & DT_PATH_ELLIPSIS))
        {
            TEXT_PathEllipsify (hdc, dest + seg_j, maxl-seg_j, &j_in_seg,
                                max_seg_width, &size, *p_retstr, pellip);
            line_fits = (size.cx <= max_seg_width);
            ellipsified = 1;
        }


        if ((!line_fits && (format & DT_WORD_ELLIPSIS)) ||
            ((format & DT_END_ELLIPSIS) &&
              ((last_line && *count) ||
               (remainder_is_none_or_newline (*count, &str[i]) && !line_fits))))
        {
            int before, len_ellipsis;
            TEXT_Ellipsify (hdc, dest + seg_j, maxl-seg_j, &j_in_seg,
                            max_seg_width, &size, *p_retstr, &before, &len_ellipsis);
            if (before > pellip->before)
            {

                pellip->after = before - pellip->before - pellip->len;

            }
            else
            {



                assert (pellip->under == 0 && pellip->after == 0);
                pellip->before = before;
                pellip->len = len_ellipsis;



            }
            line_fits = (size.cx <= max_seg_width);
            ellipsified = 1;
        }




        if ((format & DT_EXPANDTABS) && ellipsified)
        {
            if (format & DT_SINGLELINE)
                *count = 0;
            else
            {
                while ((*count) && str[i] != CR && str[i] != LF)
                {
                    (*count)--, i++;
                }
            }
        }

        j = seg_j + j_in_seg;
        if (*pprefix_offset >= seg_j + pellip->before)
        {
            *pprefix_offset = TEXT_Reprefix (str + seg_i, i - seg_i, pellip);
            if (*pprefix_offset != -1)
                *pprefix_offset += seg_j;
        }

        plen += size.cx;
        if (size.cy > retsize->cy)
            retsize->cy = size.cy;

        if (word_broken)
            break;
        else if (!*count)
            break;
        else if (str[i] == CR || str[i] == LF)
        {
            (*count)--, i++;
            if (*count && (str[i] == CR || str[i] == LF) && str[i] != str[i-1])
            {
                (*count)--, i++;
            }
            break;
        }

    }

    retsize->cx = plen;
    *len = j;
    if (*count)
        return (&str[i]);
    else
        return ((void*)0);
}
