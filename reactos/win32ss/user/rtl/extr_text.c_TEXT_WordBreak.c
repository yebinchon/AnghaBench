
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef int SIZE ;
typedef int HDC ;


 int DT_CENTER ;
 int DT_EDITCONTROL ;
 int DT_PATH_ELLIPSIS ;
 int DT_RIGHT ;
 int DT_WORDBREAK ;
 int DT_WORD_ELLIPSIS ;
 int FALSE ;
 int GetTextExtentExPointW (int ,scalar_t__*,unsigned int,int ,int *,int *,int *) ;
 int GreGetTextExtentExW (int ,scalar_t__*,unsigned int,int ,int *,int *,int *,int ) ;
 scalar_t__ IsCJKT (scalar_t__) ;
 int KinsokuClassA ;
 scalar_t__ SPACE ;
 int TRUE ;
 int assert (int) ;
 int * wcschr (int ,scalar_t__) ;

__attribute__((used)) static void TEXT_WordBreak (HDC hdc, WCHAR *str, unsigned int max_str,
                            unsigned int *len_str,
                            int width, int format, unsigned int chars_fit,
                            unsigned int *chars_used, SIZE *size)
{
    WCHAR *p;
    int word_fits;
    assert (format & DT_WORDBREAK);
    assert (chars_fit < *len_str);




    p = str + chars_fit;
    word_fits = TRUE;
    if (!chars_fit)
        word_fits = FALSE;
    else if (*p == SPACE)
        p--;
    else
    {
        while (p > str && *(--p) != SPACE && (!IsCJKT(p[1]) ||
                p[1] == L'\0' || wcschr(KinsokuClassA, p[1]) != ((void*)0)))
            ;
        word_fits = (p != str || *p == SPACE || IsCJKT(p[1]));
    }

    if (word_fits)
    {
        int next_is_space;

        if (!(format & (DT_RIGHT | DT_CENTER)) || *p != SPACE)
            p++;
        next_is_space = (unsigned int) (p - str) < *len_str && *p == SPACE;
        *len_str = p - str;

        *chars_used = *len_str;
        if (next_is_space)
            (*chars_used)++;
    }

    else
    {
        if ((format & (DT_EDITCONTROL | DT_WORD_ELLIPSIS | DT_PATH_ELLIPSIS)) ==
            DT_EDITCONTROL)
        {


            if (!chars_fit)
                ++chars_fit;
            *len_str = chars_fit;
            *chars_used = chars_fit;





        }

        else
        {

            const WCHAR *e = str + *len_str;
            p = str + chars_fit;
            while (p < e && *p != SPACE)
                p++;
            *chars_used = p - str;
            if (p < e)
                (*chars_used)++;


            *len_str = p - str;



        }
    }




    GetTextExtentExPointW (hdc, str, *len_str, 0, ((void*)0), ((void*)0), size);

}
