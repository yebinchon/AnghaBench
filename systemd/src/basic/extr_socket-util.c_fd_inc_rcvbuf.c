
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int socklen_t ;


 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_RCVBUFFORCE ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int setsockopt_int (int,int ,int ,size_t) ;

int fd_inc_rcvbuf(int fd, size_t n) {
        int r, value;
        socklen_t l = sizeof(value);

        r = getsockopt(fd, SOL_SOCKET, SO_RCVBUF, &value, &l);
        if (r >= 0 && l == sizeof(value) && (size_t) value >= n*2)
                return 0;



        if (setsockopt_int(fd, SOL_SOCKET, SO_RCVBUF, n) < 0) {
                r = setsockopt_int(fd, SOL_SOCKET, SO_RCVBUFFORCE, n);
                if (r < 0)
                        return r;
        }

        return 1;
}
