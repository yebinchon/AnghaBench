
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int IN_SET (char,char,char) ;
 char* endswith (char const*,char*) ;
 char* strndup (char*,int) ;

int catalog_file_lang(const char* filename, char **lang) {
        char *beg, *end, *_lang;

        end = endswith(filename, ".catalog");
        if (!end)
                return 0;

        beg = end - 1;
        while (beg > filename && !IN_SET(*beg, '.', '/') && end - beg < 32)
                beg--;

        if (*beg != '.' || end <= beg + 1)
                return 0;

        _lang = strndup(beg + 1, end - beg - 1);
        if (!_lang)
                return -ENOMEM;

        *lang = _lang;
        return 1;
}
