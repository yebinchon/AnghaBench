
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VM_MAXCPU ;

__attribute__((used)) static int
num_vcpus_allowed(void)
{
 return (VM_MAXCPU);
}
