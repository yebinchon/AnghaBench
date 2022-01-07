
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;

__attribute__((used)) static inline void _reset_errno_(int *saved_errno) {
        if (*saved_errno < 0)
                return;

        errno = *saved_errno;
}
