
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_ULOCK ;
 int lockf (int,int ,int ) ;

__attribute__((used)) static void unlockfp(int *fd_lock) {
        if (*fd_lock < 0)
                return;
        lockf(*fd_lock, F_ULOCK, 0);
        *fd_lock = -1;
}
