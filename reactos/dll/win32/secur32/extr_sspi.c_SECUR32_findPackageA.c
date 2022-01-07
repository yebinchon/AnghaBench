
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int SecurePackage ;
typedef scalar_t__ PCSTR ;


 int RtlCreateUnicodeStringFromAsciiz (TYPE_1__*,scalar_t__) ;
 int RtlFreeUnicodeString (TYPE_1__*) ;
 int * SECUR32_findPackageW (int ) ;

SecurePackage *SECUR32_findPackageA(PCSTR packageName)
{
    SecurePackage *ret;

    if (packageName)
    {
        UNICODE_STRING package;

        RtlCreateUnicodeStringFromAsciiz(&package, packageName);
        ret = SECUR32_findPackageW(package.Buffer);
        RtlFreeUnicodeString(&package);
    }
    else
        ret = ((void*)0);
    return ret;
}
