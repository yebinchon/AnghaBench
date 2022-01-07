
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__* PSTR ;


 int toupper (int ) ;

VOID DosToUpperStrZ(PSTR DestStr, PSTR SrcStr)
{
    while (*SrcStr)
        *DestStr++ = toupper(*SrcStr++);
}
