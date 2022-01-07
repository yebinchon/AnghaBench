
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IsUTF8 (char const*) ;
 int * strchr (char const*,char) ;

__attribute__((used)) static bool IsSDPString (const char *str)
{
    if (strchr (str, '\r') != ((void*)0))
        return 0;
    if (strchr (str, '\n') != ((void*)0))
        return 0;
    if (!IsUTF8 (str))
        return 0;
    return 1;
}
