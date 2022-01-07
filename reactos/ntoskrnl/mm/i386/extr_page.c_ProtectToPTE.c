
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int DPRINT1 (char*) ;
 int KeBugCheck (int ) ;
 int MEMORY_MANAGEMENT ;
 int PAGE_GUARD ;
 int PAGE_IS_EXECUTABLE ;
 int PAGE_IS_READABLE ;
 int PAGE_IS_WRITABLE ;
 int PAGE_NOACCESS ;
 int PAGE_NOCACHE ;
 int PAGE_SYSTEM ;
 int PAGE_WRITETHROUGH ;
 int PA_CD ;
 int PA_PRESENT ;
 int PA_READWRITE ;
 int PA_USER ;
 int PA_WT ;

__attribute__((used)) static ULONG
ProtectToPTE(ULONG flProtect)
{
    ULONG Attributes = 0;

    if (flProtect & (PAGE_NOACCESS|PAGE_GUARD))
    {
        Attributes = 0;
    }
    else if (flProtect & PAGE_IS_WRITABLE)
    {
        Attributes = PA_PRESENT | PA_READWRITE;
    }
    else if (flProtect & (PAGE_IS_READABLE | PAGE_IS_EXECUTABLE))
    {
        Attributes = PA_PRESENT;
    }
    else
    {
        DPRINT1("Unknown main protection type.\n");
        KeBugCheck(MEMORY_MANAGEMENT);
    }

    if (flProtect & PAGE_SYSTEM)
    {
    }
    else
    {
        Attributes = Attributes | PA_USER;
    }
    if (flProtect & PAGE_NOCACHE)
    {
        Attributes = Attributes | PA_CD;
    }
    if (flProtect & PAGE_WRITETHROUGH)
    {
        Attributes = Attributes | PA_WT;
    }
    return(Attributes);
}
