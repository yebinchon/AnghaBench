
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int ENOENT ;
 char* ToLocaleDup (char const*) ;
 int errno ;
 int free (char const*) ;
 int lstat (char const*,struct stat*) ;
 int stat (char const*,struct stat*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int vlc_statEx (const char *filename, struct stat *buf, bool deref)
{
    const char *local_name = ToLocaleDup (filename);
    if (unlikely(local_name == ((void*)0)))
    {
        errno = ENOENT;
        return -1;
    }

    int res = deref ? stat (local_name, buf)
                    : lstat (local_name, buf);
    free (local_name);
    return res;
}
