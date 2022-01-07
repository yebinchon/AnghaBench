
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 int errno ;

__attribute__((used)) static inline int errno_or_else(int fallback) {




        if (errno > 0)
                return -errno;

        return -abs(fallback);
}
