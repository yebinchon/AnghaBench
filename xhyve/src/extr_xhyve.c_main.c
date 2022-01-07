
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int BSP ;
 int EX_USAGE ;
 int MB ;
 int VM_MMAP_ALL ;
 int acpi ;
 int acpi_build (int) ;
 int assert (int) ;
 int atkbdc_init () ;
 int atoi (void*) ;
 int basename (char*) ;
 int errx (int ,char*,void*) ;
 int exit (int) ;
 int firmware_parse (void*) ;
 int fprintf (int ,char*,int,...) ;
 int getopt (int,char**,char*) ;
 int guest_ncpus ;
 void* guest_uuid_str ;
 int guest_vmexit_on_hlt ;
 int guest_vmexit_on_pause ;
 int init_bvmcons () ;
 int init_dbgport (int) ;
 int init_inout () ;
 int init_mem () ;
 int init_msr () ;
 scalar_t__ init_pci () ;
 int ioapic_init () ;
 int * lpc_bootrom () ;
 int lpc_device_parse (void*) ;
 int mevent_dispatch () ;
 int mptable_build (int) ;
 int num_vcpus_allowed () ;
 void* optarg ;
 int parse_memsize (void*,size_t*) ;
 int pci_irq_init () ;
 int pci_parse_slot (void*) ;
 void* pidfile ;
 int print_mac ;
 int progname ;
 int rtc_init (int) ;
 int sci_init () ;
 int setup_pidfile () ;
 int show_version () ;
 int smbios_build () ;
 int stderr ;
 int strictio ;
 int strictmsr ;
 int usage (int) ;
 int vcpu_add (int ,int ,scalar_t__) ;
 int virtio_msix ;
 int x2apic_mode ;
 int xh_vm_create () ;
 int xh_vm_setup_memory (size_t,int ) ;

int
main(int argc, char *argv[])
{
 int c, error, gdb_port, bvmcons, fw;
 int dump_guest_memory, max_vcpus, mptgen;
 int rtc_localtime;
 uint64_t rip;
 size_t memsize;

 bvmcons = 0;
 dump_guest_memory = 0;
 progname = basename(argv[0]);
 gdb_port = 0;
 guest_ncpus = 1;
 print_mac = 0;
 memsize = 256 * MB;
 mptgen = 1;
 rtc_localtime = 1;
 fw = 0;

 while ((c = getopt(argc, argv, "behvuwxMACHPWY:f:F:g:c:s:m:l:U:")) != -1) {
  switch (c) {
  case 'A':
   acpi = 1;
   break;
  case 'b':
   bvmcons = 1;
   break;
  case 'c':
   guest_ncpus = atoi(optarg);
   break;
  case 'C':
   dump_guest_memory = 1;
   break;
  case 'f':
   if (firmware_parse(optarg) != 0) {
    exit (1);
   } else {
    fw = 1;
    break;
   }
  case 'F':
   pidfile = optarg;
   break;
  case 'g':
   gdb_port = atoi(optarg);
   break;
  case 'l':
   if (lpc_device_parse(optarg) != 0) {
    errx(EX_USAGE, "invalid lpc device "
        "configuration '%s'", optarg);
   }
   break;
  case 's':
   if (pci_parse_slot(optarg) != 0)
    exit(1);
   else
    break;
  case 'm':
   error = parse_memsize(optarg, &memsize);
   if (error)
    errx(EX_USAGE, "invalid memsize '%s'", optarg);
   break;
  case 'M':
   print_mac = 1;
   break;
  case 'H':
   guest_vmexit_on_hlt = 1;
   break;
  case 'P':
   guest_vmexit_on_pause = 1;
   break;
  case 'e':
   strictio = 1;
   break;
  case 'u':
   rtc_localtime = 0;
   break;
  case 'U':
   guest_uuid_str = optarg;
   break;
  case 'w':
   strictmsr = 0;
   break;
  case 'W':
   virtio_msix = 0;
   break;
  case 'x':
   x2apic_mode = 1;
   break;
  case 'Y':
   mptgen = 0;
   break;
  case 'v':
   show_version();
  case 'h':
   usage(0);
  default:
   usage(1);
  }
 }

 if ((fw != 1) && (lpc_bootrom() == ((void*)0)))
  usage(1);

 error = xh_vm_create();
 if (error) {
  fprintf(stderr, "Unable to create VM (%d)\n", error);
  exit(1);
 }

 if (guest_ncpus < 1) {
  fprintf(stderr, "Invalid guest vCPUs (%d)\n", guest_ncpus);
  exit(1);
 }

 max_vcpus = num_vcpus_allowed();
 if (guest_ncpus > max_vcpus) {
  fprintf(stderr, "%d vCPUs requested but only %d available\n",
   guest_ncpus, max_vcpus);
  exit(1);
 }

 error = xh_vm_setup_memory(memsize, VM_MMAP_ALL);
 if (error) {
  fprintf(stderr, "Unable to setup memory (%d)\n", error);
  exit(1);
 }

 error = init_msr();
 if (error) {
  fprintf(stderr, "init_msr error %d\n", error);
  exit(1);
 }

 error = setup_pidfile();
 if (error) {
  fprintf(stderr, "pidfile error %d\n", error);
  exit(1);
 }

 init_mem();
 init_inout();
    atkbdc_init();
 pci_irq_init();
 ioapic_init();

 rtc_init(rtc_localtime);
 sci_init();




 if (init_pci() != 0)
  exit(1);

 if (gdb_port != 0)
  init_dbgport(gdb_port);

 if (bvmcons)
  init_bvmcons();




 if (mptgen) {
  error = mptable_build(guest_ncpus);
  if (error)
   exit(1);
 }

 error = smbios_build();
 assert(error == 0);

 if (acpi) {
  error = acpi_build(guest_ncpus);
  assert(error == 0);
 }

 rip = 0;

 vcpu_add(BSP, BSP, rip);




 mevent_dispatch();

 exit(1);
}
