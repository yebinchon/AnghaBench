
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int AcpiGbl_TableHandler (int ,void*,int ) ;
 int AcpiGbl_TableHandlerContext ;

void
AcpiTbNotifyTable (
    UINT32 Event,
    void *Table)
{


    if (AcpiGbl_TableHandler)
    {
        (void) AcpiGbl_TableHandler (Event, Table,
            AcpiGbl_TableHandlerContext);
    }
}
