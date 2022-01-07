
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strcpy (
    char *DstString,
    const char *SrcString)
{
    char *String = DstString;




    while (*SrcString)
    {
        *String = *SrcString;

        String++;
        SrcString++;
    }



    *String = 0;
    return (DstString);
}
