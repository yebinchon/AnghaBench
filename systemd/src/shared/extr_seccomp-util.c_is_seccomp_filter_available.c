
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EFAULT ;
 int PR_SET_SECCOMP ;
 int SECCOMP_MODE_FILTER ;
 scalar_t__ errno ;
 scalar_t__ prctl (int ,int ,int *,int ,int ) ;

__attribute__((used)) static bool is_seccomp_filter_available(void) {
        return prctl(PR_SET_SECCOMP, SECCOMP_MODE_FILTER, ((void*)0), 0, 0) < 0 &&
                errno == EFAULT;
}
