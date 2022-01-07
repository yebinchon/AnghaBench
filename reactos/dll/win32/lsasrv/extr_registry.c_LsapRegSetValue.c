
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int ULONG ;
typedef int NTSTATUS ;
typedef int LPWSTR ;
typedef int LPVOID ;
typedef int HANDLE ;


 int RtlInitUnicodeString (int *,int ) ;
 int ZwSetValueKey (int ,int *,int ,int ,int ,int ) ;

NTSTATUS
LsapRegSetValue(HANDLE KeyHandle,
                LPWSTR ValueName,
                ULONG Type,
                LPVOID Data,
                ULONG DataLength)
{
    UNICODE_STRING Name;

    RtlInitUnicodeString(&Name,
                         ValueName);

    return ZwSetValueKey(KeyHandle,
                         &Name,
                         0,
                         Type,
                         Data,
                         DataLength);
}
