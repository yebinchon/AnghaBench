
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EFI_STATUS ;
typedef int CHAR16 ;
typedef int BOOLEAN ;


 int StrLen (int const*) ;
 int efivar_set_raw (int *,int const*,int const*,int,int ) ;
 int loader_guid ;

EFI_STATUS efivar_set(const CHAR16 *name, const CHAR16 *value, BOOLEAN persistent) {
        return efivar_set_raw(&loader_guid, name, value, value ? (StrLen(value)+1) * sizeof(CHAR16) : 0, persistent);
}
