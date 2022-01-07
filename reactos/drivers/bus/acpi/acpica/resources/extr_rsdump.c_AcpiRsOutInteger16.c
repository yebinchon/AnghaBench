
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;


 int AcpiOsPrintf (char*,char const*,int ) ;

__attribute__((used)) static void
AcpiRsOutInteger16 (
    const char *Title,
    UINT16 Value)
{

    AcpiOsPrintf ("%27s : %4.4X\n", Title, Value);
}
