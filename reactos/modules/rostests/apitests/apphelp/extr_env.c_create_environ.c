
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SetEnvironmentVariableA (char*,char*) ;
 int strcat (char*,char const*) ;

__attribute__((used)) static void create_environ(const char* layers[], size_t num)
{
    char buf[256] = { 0 };
    size_t n;
    for (n = 0; n < num; ++n)
    {
        if (n)
            strcat(buf, " ");
        strcat(buf, layers[n]);
    }
    SetEnvironmentVariableA("__COMPAT_LAYER", buf);
}
