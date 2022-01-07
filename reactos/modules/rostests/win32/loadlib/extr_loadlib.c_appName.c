
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strrchr (char const*,char) ;

const char* appName(const char* argv0)
{
    const char* name;

    name = (const char*)strrchr(argv0, '\\');
    if (name != ((void*)0))
        return name + 1;
    return argv0;
}
