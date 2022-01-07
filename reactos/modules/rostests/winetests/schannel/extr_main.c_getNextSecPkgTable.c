
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_4__ {int * FreeCredentialsHandle; scalar_t__ Initialize; } ;
typedef TYPE_1__* PSECPKG_FUNCTION_TABLE ;
typedef scalar_t__ PBYTE ;


 int FALSE ;
 size_t SECPKG_FUNCTION_TABLE_SIZE_1 ;
 size_t SECPKG_FUNCTION_TABLE_SIZE_2 ;
 size_t SECPKG_FUNCTION_TABLE_SIZE_3 ;
 size_t SECPKG_FUNCTION_TABLE_SIZE_4 ;
 size_t SECPKG_FUNCTION_TABLE_SIZE_5 ;
 size_t SECPKG_FUNCTION_TABLE_SIZE_6 ;
 size_t SECPKG_FUNCTION_TABLE_SIZE_7 ;
 scalar_t__ SECPKG_INTERFACE_VERSION ;
 scalar_t__ SECPKG_INTERFACE_VERSION_2 ;
 scalar_t__ SECPKG_INTERFACE_VERSION_3 ;
 scalar_t__ SECPKG_INTERFACE_VERSION_4 ;
 scalar_t__ SECPKG_INTERFACE_VERSION_5 ;
 scalar_t__ SECPKG_INTERFACE_VERSION_6 ;
 scalar_t__ SECPKG_INTERFACE_VERSION_7 ;
 scalar_t__ broken (int) ;
 int ok (int ,char*,scalar_t__) ;
 int win_skip (char*) ;

__attribute__((used)) static PSECPKG_FUNCTION_TABLE getNextSecPkgTable(PSECPKG_FUNCTION_TABLE pTable,
                                                 ULONG Version)
{
    size_t size;
    PSECPKG_FUNCTION_TABLE pNextTable;

    if (Version == SECPKG_INTERFACE_VERSION)
        size = SECPKG_FUNCTION_TABLE_SIZE_1;
    else if (Version == SECPKG_INTERFACE_VERSION_2)
        size = SECPKG_FUNCTION_TABLE_SIZE_2;
    else if (Version == SECPKG_INTERFACE_VERSION_3)
        size = SECPKG_FUNCTION_TABLE_SIZE_3;
    else if (Version == SECPKG_INTERFACE_VERSION_4)
        size = SECPKG_FUNCTION_TABLE_SIZE_4;
    else if (Version == SECPKG_INTERFACE_VERSION_5)
        size = SECPKG_FUNCTION_TABLE_SIZE_5;
    else if (Version == SECPKG_INTERFACE_VERSION_6)
        size = SECPKG_FUNCTION_TABLE_SIZE_6;
    else if (Version == SECPKG_INTERFACE_VERSION_7)
        size = SECPKG_FUNCTION_TABLE_SIZE_7;
    else {
        ok(FALSE, "Unknown package version 0x%x\n", Version);
        return ((void*)0);
    }

    pNextTable = (PSECPKG_FUNCTION_TABLE)((PBYTE)pTable + size);






    if (broken((void *) pTable->Initialize == (void *) pNextTable->FreeCredentialsHandle &&
               pNextTable->FreeCredentialsHandle != ((void*)0)))
    {
        win_skip("Invalid function pointers for next package\n");
        return ((void*)0);
    }

    return pNextTable;
}
