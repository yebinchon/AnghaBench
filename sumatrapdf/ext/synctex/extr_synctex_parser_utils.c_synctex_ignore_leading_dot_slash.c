
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SYNCTEX_IS_DOT (char const) ;
 scalar_t__ SYNCTEX_IS_PATH_SEPARATOR (char const) ;

const char * synctex_ignore_leading_dot_slash(const char * name)
{
    while(SYNCTEX_IS_DOT(*name) && SYNCTEX_IS_PATH_SEPARATOR(name[1])) {
        name += 2;
        while (SYNCTEX_IS_PATH_SEPARATOR(*name)) {
            ++name;
        }
    }
    return name;
}
