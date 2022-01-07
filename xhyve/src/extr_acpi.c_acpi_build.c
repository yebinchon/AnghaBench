
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; int * wsect; } ;


 int basl_compile (int *,int ) ;
 TYPE_1__* basl_ftables ;
 int basl_keep_temps ;
 int basl_make_templates () ;
 int basl_ncpu ;
 int basl_verbose_iasl ;
 scalar_t__ getenv (char*) ;
 int hpet_capabilities ;
 int xh_vm_get_hpet_capabilities (int *) ;

int
acpi_build(int ncpu)
{
 int err;
 int i;

 basl_ncpu = ncpu;

 err = xh_vm_get_hpet_capabilities(&hpet_capabilities);
 if (err != 0)
  return (err);





 if (getenv("BHYVE_ACPI_VERBOSE_IASL"))
  basl_verbose_iasl = 1;





 if (getenv("BHYVE_ACPI_KEEPTMPS"))
  basl_keep_temps = 1;

 i = 0;
 err = basl_make_templates();





 while (!err && basl_ftables[i].wsect != ((void*)0)) {
  err = basl_compile(basl_ftables[i].wsect,
       basl_ftables[i].offset);
  i++;
 }

 return (err);
}
