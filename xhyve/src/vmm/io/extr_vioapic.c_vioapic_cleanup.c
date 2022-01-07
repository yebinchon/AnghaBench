
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vioapic {int dummy; } ;


 int free (struct vioapic*) ;

void
vioapic_cleanup(struct vioapic *vioapic)
{
 free(vioapic);
}
