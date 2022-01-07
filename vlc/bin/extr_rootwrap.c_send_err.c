
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err ;


 int MSG_NOSIGNAL ;
 int send (int,int*,int,int ) ;

__attribute__((used)) static inline int send_err (int fd, int err)
{
    return send(fd, &err, sizeof (err), MSG_NOSIGNAL) == sizeof (err) ? 0 : -1;
}
