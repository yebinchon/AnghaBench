
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCHAR ;
typedef int CHAR ;


 int GspWriteMem (int ,int,int ,int ,int *) ;
 int GspWriteMemSafeGetContent ;
 int TRUE ;

__attribute__((used)) static void
GspWriteMemSafe(PCHAR Address,
                CHAR Ch)
{
    GspWriteMem(Address, 1, TRUE, GspWriteMemSafeGetContent, &Ch);
}
