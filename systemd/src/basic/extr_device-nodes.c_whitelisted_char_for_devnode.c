
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char) ;

int whitelisted_char_for_devnode(char c, const char *white) {

        if ((c >= '0' && c <= '9') ||
            (c >= 'A' && c <= 'Z') ||
            (c >= 'a' && c <= 'z') ||
            strchr("#+-.:=@_", c) != ((void*)0) ||
            (white != ((void*)0) && strchr(white, c) != ((void*)0)))
                return 1;

        return 0;
}
