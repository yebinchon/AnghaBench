
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_whence; int l_type; } ;
typedef int ngx_fd_t ;
typedef int ngx_err_t ;


 int F_SETLK ;
 int F_WRLCK ;
 int SEEK_SET ;
 int fcntl (int ,int ,struct flock*) ;
 int ngx_errno ;
 int ngx_memzero (struct flock*,int) ;

ngx_err_t
ngx_trylock_fd(ngx_fd_t fd)
{
    struct flock fl;

    ngx_memzero(&fl, sizeof(struct flock));
    fl.l_type = F_WRLCK;
    fl.l_whence = SEEK_SET;

    if (fcntl(fd, F_SETLK, &fl) == -1) {
        return ngx_errno;
    }

    return 0;
}
