
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_ioprio_get ;
 int syscall (int ,int,int) ;

__attribute__((used)) static inline int ioprio_get(int which, int who) {
        return syscall(__NR_ioprio_get, which, who);
}
