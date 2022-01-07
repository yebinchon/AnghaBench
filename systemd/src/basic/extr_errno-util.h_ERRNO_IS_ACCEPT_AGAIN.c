
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EINTR ;
 int EOPNOTSUPP ;
 scalar_t__ ERRNO_IS_DISCONNECT (int) ;
 scalar_t__ IN_SET (int ,int ,int ,int ) ;
 int abs (int) ;

__attribute__((used)) static inline bool ERRNO_IS_ACCEPT_AGAIN(int r) {
        return ERRNO_IS_DISCONNECT(r) ||
                IN_SET(abs(r),
                       EAGAIN,
                       EINTR,
                       EOPNOTSUPP);
}
