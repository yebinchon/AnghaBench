
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _utimbuf {int dummy; } ;
typedef int _TCHAR ;


 int _O_BINARY ;
 int _O_WRONLY ;
 int _close (int) ;
 int _futime (int,struct _utimbuf*) ;
 int _topen (int const*,int) ;

int
_tutime(const _TCHAR* path, struct _utimbuf *t)
{
    int fd = _topen(path, _O_WRONLY | _O_BINARY);

    if (fd > 0)
    {
        int retVal = _futime(fd, t);
        _close(fd);
        return retVal;
    }
    return -1;
}
