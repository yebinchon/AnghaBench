
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int safe_close (int) ;

__attribute__((used)) static inline int safe_close_above_stdio(int fd) {
        if (fd < 3)
                return -1;

        return safe_close(fd);
}
