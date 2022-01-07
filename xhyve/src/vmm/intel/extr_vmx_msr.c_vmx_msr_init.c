
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned int misc_enable ;
 int platform_info ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int turbo_ratio_limit ;
 int xhyve_abort (char*) ;

void
vmx_msr_init(void) {
 uint64_t bus_freq, tsc_freq, ratio;
 size_t length;
 int i;

 length = sizeof(uint64_t);

 if (sysctlbyname("machdep.tsc.frequency", &tsc_freq, &length, ((void*)0), 0)) {
   xhyve_abort("machdep.tsc.frequency\n");
 }

 if (sysctlbyname("hw.busfrequency", &bus_freq, &length, ((void*)0), 0)) {
   xhyve_abort("hw.busfrequency\n");
 }



 misc_enable = 1;
 misc_enable |= (1u << 12) | (1u << 11);
 misc_enable &= ~((1u << 18) | (1u << 16));






 ratio = (tsc_freq / bus_freq) & 0xff;
 platform_info = (ratio << 8) | (ratio << 40);
 for (i = 0; i < 8; i++) {
   turbo_ratio_limit = (turbo_ratio_limit << 8) | ratio;
 }
}
