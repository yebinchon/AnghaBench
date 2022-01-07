
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long int64_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ERANGE ;
 scalar_t__ errno ;
 long long strtoll (char const*,char**,int ) ;

__attribute__((used)) static int64_t vlc_strtoi (const char *str)
{
    char *end;
    long long l;

    errno = 0;
    l = strtoll (str, &end, 0);

    if (!errno)
    {





        if (*end)
            errno = EINVAL;
    }
    return l;
}
