
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union bpf_attr {int dummy; } bpf_attr ;


 int ENOSYS ;
 int __NR_bpf ;
 int errno ;
 scalar_t__ syscall (int ,int,union bpf_attr*,size_t) ;

__attribute__((used)) static inline int missing_bpf(int cmd, union bpf_attr *attr, size_t size) {



        errno = ENOSYS;
        return -1;

}
