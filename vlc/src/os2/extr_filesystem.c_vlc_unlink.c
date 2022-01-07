
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 char* ToLocaleDup (char const*) ;
 int errno ;
 int free (char const*) ;
 scalar_t__ unlikely (int ) ;
 int unlink (char const*) ;

int vlc_unlink (const char *filename)
{
    const char *local_name = ToLocaleDup (filename);
    if (unlikely(local_name == ((void*)0)))
    {
        errno = ENOENT;
        return -1;
    }

    int ret = unlink (local_name);
    free (local_name);
    return ret;
}
