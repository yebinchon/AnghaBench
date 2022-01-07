
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PR_GET_SECCOMP ;
 scalar_t__ prctl (int ,int ,int ,int ,int ) ;

__attribute__((used)) static bool is_basic_seccomp_available(void) {
        return prctl(PR_GET_SECCOMP, 0, 0, 0, 0) >= 0;
}
