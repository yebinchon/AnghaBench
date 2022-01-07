
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;
typedef int Tox ;


 char ERR ;
 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 char getch () ;
 int new_lines (char*) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int tox_iteration_interval (int *) ;

char timeout_getch(Tox *m)
{
    char c;
    int slpval = tox_iteration_interval(m);

    fd_set fds;
    FD_ZERO(&fds);
    FD_SET(0, &fds);
    struct timeval tv;
    tv.tv_sec = 0;
    tv.tv_usec = slpval * 1000;

    c = ERR;
    int n = select(1, &fds, ((void*)0), ((void*)0), &tv);

    if (n < 0) {
        new_lines("select error: maybe interupted");
    } else if (n == 0) {
    } else {
        c = getch();
    }

    return c;
}
