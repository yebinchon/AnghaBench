
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Flags; } ;
typedef TYPE_1__* PIO_STACK_LOCATION ;


 int DbgP (char*,int,char*,char*,char*,char*) ;
 int SL_CASE_SENSITIVE ;
 int SL_FORCE_ACCESS_CHECK ;
 int SL_OPEN_PAGING_FILE ;
 int SL_OPEN_TARGET_DIRECTORY ;

void print_irps_flags(int on, PIO_STACK_LOCATION irps)
{
    if (!on) return;
    if (irps->Flags)
        DbgP("IRPSP FLAGS 0x%x %s %s %s %s\n", irps->Flags,
            (irps->Flags & SL_CASE_SENSITIVE)?"CASE_SENSITIVE":"",
            (irps->Flags & SL_OPEN_PAGING_FILE)?"PAGING_FILE":"",
            (irps->Flags & SL_FORCE_ACCESS_CHECK)?"ACCESS_CHECK":"",
            (irps->Flags & SL_OPEN_TARGET_DIRECTORY)?"TARGET_DIR":"");
}
