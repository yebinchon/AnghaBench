
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef char* LPSTR ;


 int PICE_strcat (char*,char*) ;
 int PICE_strcpy (char*,char*) ;
 int VM_STACK_FLAGS ;

LPSTR DecodeVmFlags(ULONG flags)
{
    ULONG i;
    static LPSTR flags_syms_on[]={"R","W","X","S","MR","MW","MX","MS","GD","GU","SHM","exe","LOCK","IO",""};
    static char temp[256];


    *temp = 0;
    return temp;
}
