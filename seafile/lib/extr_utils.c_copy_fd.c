
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buffer ;


 int close (int) ;
 scalar_t__ readn (int,char*,int) ;
 scalar_t__ writen (int,char*,scalar_t__) ;

int copy_fd (int ifd, int ofd)
{
    while (1) {
        char buffer[8192];
        ssize_t len = readn (ifd, buffer, sizeof(buffer));
        if (!len)
            break;
        if (len < 0) {
            close (ifd);
            return -1;
        }
        if (writen (ofd, buffer, len) < 0) {
            close (ofd);
            return -1;
        }
    }
    close(ifd);
    return 0;
}
