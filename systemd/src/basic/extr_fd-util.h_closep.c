
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int safe_close (int) ;

__attribute__((used)) static inline void closep(int *fd) {
        safe_close(*fd);
}
