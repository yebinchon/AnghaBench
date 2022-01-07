
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int PWCHAR ;
typedef int PHANDLE ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int ACCESS_MASK ;


 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int NtCreateKey (int ,int ,int *,int ,int *,int ,int ) ;
 int OBJ_CASE_INSENSITIVE ;
 int REG_OPTION_VOLATILE ;
 int RtlInitUnicodeString (int *,int ) ;

__attribute__((used)) static
NTSTATUS
CreateRegistryKeyHandle(PHANDLE KeyHandle,
                      ACCESS_MASK AccessMask,
                      PWCHAR RegistryPath)
{
    UNICODE_STRING KeyName;
    OBJECT_ATTRIBUTES Attributes;

    RtlInitUnicodeString(&KeyName, RegistryPath);
    InitializeObjectAttributes(&Attributes,
                               &KeyName,
                               OBJ_CASE_INSENSITIVE,
                               ((void*)0),
                               ((void*)0));

    return NtCreateKey(KeyHandle, AccessMask, &Attributes, 0, ((void*)0), REG_OPTION_VOLATILE, 0);
}
