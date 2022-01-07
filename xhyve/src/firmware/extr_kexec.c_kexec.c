
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {char* kernel; char* cmdline; char* initrd; } ;
struct TYPE_5__ {int base; } ;
struct TYPE_4__ {uintptr_t base; int size; } ;


 scalar_t__ BASE_GDT ;
 int BASE_ZEROPAGE ;
 int VM_REG_GUEST_CR0 ;
 int VM_REG_GUEST_CS ;
 int VM_REG_GUEST_DS ;
 int VM_REG_GUEST_ES ;
 int VM_REG_GUEST_GDTR ;
 int VM_REG_GUEST_RBP ;
 int VM_REG_GUEST_RBX ;
 int VM_REG_GUEST_RDI ;
 int VM_REG_GUEST_RFLAGS ;
 int VM_REG_GUEST_RIP ;
 int VM_REG_GUEST_RSI ;
 int VM_REG_GUEST_SS ;
 int abort () ;
 TYPE_3__ config ;
 int fprintf (int ,char*,char*) ;
 TYPE_2__ kernel ;
 scalar_t__ kexec_load_kernel (char*,char*) ;
 scalar_t__ kexec_load_ramdisk (char*) ;
 TYPE_1__ lowmem ;
 int stderr ;
 int xh_vcpu_reset (int ) ;
 int xh_vm_get_lowmem_size () ;
 void* xh_vm_map_gpa (int ,int ) ;
 int xh_vm_set_desc (int ,int ,scalar_t__,int,int) ;
 int xh_vm_set_register (int ,int ,int) ;

uint64_t
kexec(void)
{
 uint64_t *gdt_entry;
 void *gpa_map;

 gpa_map = xh_vm_map_gpa(0, xh_vm_get_lowmem_size());
 lowmem.base = (uintptr_t) gpa_map;
 lowmem.size = xh_vm_get_lowmem_size();

 if (kexec_load_kernel(config.kernel,
  config.cmdline ? config.cmdline : "auto"))
 {
  fprintf(stderr, "kexec: failed to load kernel %s\n", config.kernel);
  abort();
 }

 if (config.initrd && kexec_load_ramdisk(config.initrd)) {
  fprintf(stderr, "kexec: failed to load initrd %s\n", config.initrd);
  abort();
 }

 gdt_entry = ((uint64_t *) (lowmem.base + BASE_GDT));
 gdt_entry[0] = 0x0000000000000000;
 gdt_entry[1] = 0x0000000000000000;
 gdt_entry[2] = 0x00cf9a000000ffff;
 gdt_entry[3] = 0x00cf92000000ffff;

 xh_vcpu_reset(0);

 xh_vm_set_desc(0, VM_REG_GUEST_GDTR, BASE_GDT, 0x1f, 0);
 xh_vm_set_desc(0, VM_REG_GUEST_CS, 0, 0xffffffff, 0xc09b);
 xh_vm_set_desc(0, VM_REG_GUEST_DS, 0, 0xffffffff, 0xc093);
 xh_vm_set_desc(0, VM_REG_GUEST_ES, 0, 0xffffffff, 0xc093);
 xh_vm_set_desc(0, VM_REG_GUEST_SS, 0, 0xffffffff, 0xc093);
 xh_vm_set_register(0, VM_REG_GUEST_CS, 0x10);
 xh_vm_set_register(0, VM_REG_GUEST_DS, 0x18);
 xh_vm_set_register(0, VM_REG_GUEST_ES, 0x18);
 xh_vm_set_register(0, VM_REG_GUEST_SS, 0x18);
 xh_vm_set_register(0, VM_REG_GUEST_CR0, 0x21);
 xh_vm_set_register(0, VM_REG_GUEST_RBP, 0);
 xh_vm_set_register(0, VM_REG_GUEST_RDI, 0);
 xh_vm_set_register(0, VM_REG_GUEST_RBX, 0);
 xh_vm_set_register(0, VM_REG_GUEST_RFLAGS, 0x2);
 xh_vm_set_register(0, VM_REG_GUEST_RSI, BASE_ZEROPAGE);
 xh_vm_set_register(0, VM_REG_GUEST_RIP, kernel.base);

 return kernel.base;
}
