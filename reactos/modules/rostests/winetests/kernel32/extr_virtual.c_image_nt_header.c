
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ e_magic; int e_lfanew; } ;
struct TYPE_5__ {scalar_t__ Signature; } ;
typedef TYPE_1__* PIMAGE_NT_HEADERS ;
typedef TYPE_1__ IMAGE_NT_HEADERS ;
typedef TYPE_3__ IMAGE_DOS_HEADER ;
typedef scalar_t__ HMODULE ;


 scalar_t__ IMAGE_DOS_SIGNATURE ;
 scalar_t__ IMAGE_NT_SIGNATURE ;

__attribute__((used)) static PIMAGE_NT_HEADERS image_nt_header(HMODULE module)
{
    IMAGE_NT_HEADERS *ret = ((void*)0);
    IMAGE_DOS_HEADER *dos = (IMAGE_DOS_HEADER *)module;

    if (dos->e_magic == IMAGE_DOS_SIGNATURE)
    {
        ret = (IMAGE_NT_HEADERS *)((char *)dos + dos->e_lfanew);
        if (ret->Signature != IMAGE_NT_SIGNATURE) ret = ((void*)0);
    }
    return ret;
}
