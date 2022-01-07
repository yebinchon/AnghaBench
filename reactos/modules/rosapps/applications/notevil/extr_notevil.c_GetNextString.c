
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__* PDWORD ;
typedef int LPWSTR ;
typedef int INT ;


 int LoadStringW (int ,scalar_t__,int ,int ) ;
 scalar_t__ RES_FIRST_INDEX ;
 scalar_t__ RES_LAST_INDEX ;
 int myself ;

VOID
GetNextString(LPWSTR Buffer,
              INT BufferSize,
              PDWORD Index)
{
    if (RES_LAST_INDEX == *Index)
        *Index = RES_FIRST_INDEX;
    else
        ++*Index;

    LoadStringW(myself, *Index, Buffer, BufferSize);
}
