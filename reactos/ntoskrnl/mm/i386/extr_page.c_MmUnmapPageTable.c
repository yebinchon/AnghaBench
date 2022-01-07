
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef scalar_t__ PULONG ;
typedef int BOOLEAN ;


 int FALSE ;
 int IS_HYPERSPACE (scalar_t__) ;
 int MmDeleteHyperspaceMapping (int ) ;
 scalar_t__ PAGE_ROUND_DOWN (scalar_t__) ;
 int TRUE ;

__attribute__((used)) static BOOLEAN MmUnmapPageTable(PULONG Pt)
{
    if (!IS_HYPERSPACE(Pt))
    {
        return TRUE;
    }

    if (Pt)
    {
        MmDeleteHyperspaceMapping((PVOID)PAGE_ROUND_DOWN(Pt));
    }
    return FALSE;
}
