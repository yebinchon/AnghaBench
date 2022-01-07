
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xhyve_abort (char*) ;

__attribute__((used)) static void
vmx_vcpu_cleanup(void *arg, int vcpuid) {
 if (arg || vcpuid) xhyve_abort("vmx_vcpu_cleanup\n");
}
