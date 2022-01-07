
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmx {int dummy; } ;


 int free (struct vmx*) ;

__attribute__((used)) static void
vmx_vm_cleanup(void *arg)
{
 struct vmx *vmx = arg;

 free(vmx);

 return;
}
