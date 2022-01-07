
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strcat (
    char *DstString,
    const char *SrcString)
{
    char *String;




    for (String = DstString; *String++; )
    { ; }



    for (--String; (*String++ = *SrcString++); )
    { ; }

    return (DstString);
}
