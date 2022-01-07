
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT16 ;


 int AcpiOsPrintf (char*,char*,size_t,size_t) ;

__attribute__((used)) static void
AcpiRsDumpWordList (
    UINT16 Length,
    UINT16 *Data)
{
    UINT16 i;


    for (i = 0; i < Length; i++)
    {
        AcpiOsPrintf ("%25s%2.2X : %4.4X\n", "Word", i, Data[i]);
    }
}
