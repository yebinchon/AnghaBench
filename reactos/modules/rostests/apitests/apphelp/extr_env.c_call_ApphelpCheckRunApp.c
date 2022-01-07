
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int ULONG64 ;
typedef int ULONG ;
typedef int PWCHAR ;
typedef int PVOID ;
typedef int PULONG ;
typedef int HANDLE ;
typedef int BOOL ;


 int FALSE ;
 int pApphelpCheckRunAppEx_w10 (int ,int *,int *,int ,int ,int *,int ,int ,int *,int ,int *,int ,int ,int *,int *) ;
 int pApphelpCheckRunAppEx_w7 (int ,int *,int *,int ,int ,int ,int ,int *,int ,int *,int ,int ,int *,int *) ;

__attribute__((used)) static BOOL call_ApphelpCheckRunApp(HANDLE FileHandle, PWCHAR ApplicationName, PVOID Environment, USHORT ExeType,
                                    PULONG Reason, PVOID* SdbQueryAppCompatData, PULONG SdbQueryAppCompatDataSize,
                                    PVOID* SxsData, PULONG SxsDataSize, PULONG FusionFlags)
{
    ULONG64 SomeFlag1 = 0;
    ULONG SomeFlag2 = 0;

    if (pApphelpCheckRunAppEx_w7)
    {
        return pApphelpCheckRunAppEx_w7(FileHandle, ((void*)0), ((void*)0), ApplicationName, Environment, ExeType, Reason,
                                        SdbQueryAppCompatData, SdbQueryAppCompatDataSize, SxsData, SxsDataSize,
                                        FusionFlags, &SomeFlag1, &SomeFlag2);
    }

    if (pApphelpCheckRunAppEx_w10)
    {
        return pApphelpCheckRunAppEx_w10(FileHandle, ((void*)0), ((void*)0), ApplicationName, Environment, ((void*)0), ExeType, Reason,
                                        SdbQueryAppCompatData, SdbQueryAppCompatDataSize, SxsData, SxsDataSize,
                                        FusionFlags, &SomeFlag1, &SomeFlag2);
    }

    return FALSE;
}
