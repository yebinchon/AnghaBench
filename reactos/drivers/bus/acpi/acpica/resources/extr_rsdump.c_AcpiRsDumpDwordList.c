
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;
typedef int UINT32 ;


 int AcpiOsPrintf (char*,char*,size_t,int ) ;

__attribute__((used)) static void
AcpiRsDumpDwordList (
    UINT8 Length,
    UINT32 *Data)
{
    UINT8 i;


    for (i = 0; i < Length; i++)
    {
        AcpiOsPrintf ("%25s%2.2X : %8.8X\n", "Dword", i, Data[i]);
    }
}
