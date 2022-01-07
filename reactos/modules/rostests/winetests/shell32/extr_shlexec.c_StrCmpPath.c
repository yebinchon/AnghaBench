
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ toupper (char const) ;

__attribute__((used)) static int StrCmpPath(const char* s1, const char* s2)
{
    if (!s1 && !s2) return 0;
    if (!s2) return 1;
    if (!s1) return -1;
    while (*s1)
    {
        if (!*s2)
        {
            if (*s1=='.')
                s1++;
            return (*s1-*s2);
        }
        if ((*s1=='/' || *s1=='\\') && (*s2=='/' || *s2=='\\'))
        {
            while (*s1=='/' || *s1=='\\')
                s1++;
            while (*s2=='/' || *s2=='\\')
                s2++;
        }
        else if (toupper(*s1)==toupper(*s2))
        {
            s1++;
            s2++;
        }
        else
        {
            return (*s1-*s2);
        }
    }
    if (*s2=='.')
        s2++;
    if (*s2)
        return -1;
    return 0;
}
