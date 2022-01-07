
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ locale_t ;


 int EINVAL ;
 int ENOENT ;
 int LC_MESSAGES_MASK ;
 int assert (int) ;
 int errno ;
 int freelocale (scalar_t__) ;
 scalar_t__ newlocale (int ,char const*,scalar_t__) ;
 char* strerror_l (int,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const char *vlc_strerror_l(int errnum, const char *lname)
{
    int saved_errno = errno;
    locale_t loc = newlocale(LC_MESSAGES_MASK, lname, (locale_t)0);

    if (unlikely(loc == (locale_t)0))
    {
        if (errno == ENOENT)
            loc = newlocale(LC_MESSAGES_MASK, "C", (locale_t)0);

        if (unlikely(loc == (locale_t)0))
        {
            assert(errno != EINVAL && errno != ENOENT);
            errno = saved_errno;
            return "Error message unavailable";
        }
        errno = saved_errno;
    }

    const char *buf = strerror_l(errnum, loc);

    freelocale(loc);
    return buf;
}
