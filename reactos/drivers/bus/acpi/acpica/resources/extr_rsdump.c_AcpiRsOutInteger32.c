
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int AcpiOsPrintf (char*,char const*,int ) ;

__attribute__((used)) static void
AcpiRsOutInteger32 (
    const char *Title,
    UINT32 Value)
{

    AcpiOsPrintf ("%27s : %8.8X\n", Title, Value);
}
