
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char) ;

__attribute__((used)) static
const char* NoMeta(const char* str)
{
    if (strchr(str, '%') != ((void*)0))
        return "**** CORRUPTED FORMAT STRING ***";

    return str;
}
