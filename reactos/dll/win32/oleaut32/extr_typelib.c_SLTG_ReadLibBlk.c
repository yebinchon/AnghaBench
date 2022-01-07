
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {int dwHelpContext; int syskind; int libflags; int ver_major; int ver_minor; int guid_list; int guid; int set_lcid; int lcid; int ptr_size; int HelpFile; int DocString; } ;
typedef char* LPVOID ;
typedef TYPE_1__ ITypeLibImpl ;
typedef int GUID ;
typedef int DWORD ;


 int FIXME (char*,int) ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int PRIMARYLANGID (int) ;
 int SLTG_LIBBLK_MAGIC ;
 int SLTG_ReadString (char*,int *,TYPE_1__*) ;
 scalar_t__ SUBLANGID (int) ;
 scalar_t__ SUBLANG_NEUTRAL ;
 int TLB_append_guid (int *,int *,int) ;
 int get_ptr_size (int) ;

__attribute__((used)) static DWORD SLTG_ReadLibBlk(LPVOID pLibBlk, ITypeLibImpl *pTypeLibImpl)
{
    char *ptr = pLibBlk;
    WORD w;

    if((w = *(WORD*)ptr) != SLTG_LIBBLK_MAGIC) {
        FIXME("libblk magic = %04x\n", w);
 return 0;
    }

    ptr += 6;
    if((w = *(WORD*)ptr) != 0xffff) {
        FIXME("LibBlk.res06 = %04x. Assumung string and skipping\n", w);
        ptr += w;
    }
    ptr += 2;

    ptr += SLTG_ReadString(ptr, &pTypeLibImpl->DocString, pTypeLibImpl);

    ptr += SLTG_ReadString(ptr, &pTypeLibImpl->HelpFile, pTypeLibImpl);

    pTypeLibImpl->dwHelpContext = *(DWORD*)ptr;
    ptr += 4;

    pTypeLibImpl->syskind = *(WORD*)ptr;
    pTypeLibImpl->ptr_size = get_ptr_size(pTypeLibImpl->syskind);
    ptr += 2;

    if(SUBLANGID(*(WORD*)ptr) == SUBLANG_NEUTRAL)
        pTypeLibImpl->lcid = pTypeLibImpl->set_lcid = MAKELCID(MAKELANGID(PRIMARYLANGID(*(WORD*)ptr),0),0);
    else
        pTypeLibImpl->lcid = pTypeLibImpl->set_lcid = 0;
    ptr += 2;

    ptr += 4;

    pTypeLibImpl->libflags = *(WORD*)ptr;
    ptr += 2;

    pTypeLibImpl->ver_major = *(WORD*)ptr;
    ptr += 2;

    pTypeLibImpl->ver_minor = *(WORD*)ptr;
    ptr += 2;

    pTypeLibImpl->guid = TLB_append_guid(&pTypeLibImpl->guid_list, (GUID*)ptr, -2);
    ptr += sizeof(GUID);

    return ptr - (char*)pLibBlk;
}
