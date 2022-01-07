
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINTN ;
typedef int EFI_STATUS ;
typedef int CHAR16 ;
typedef int BOOLEAN ;


 int SPrint (int *,int,char*,int ) ;
 int efivar_set (int *,int *,int ) ;

EFI_STATUS efivar_set_int(CHAR16 *name, UINTN i, BOOLEAN persistent) {
        CHAR16 str[32];

        SPrint(str, 32, L"%u", i);
        return efivar_set(name, str, persistent);
}
