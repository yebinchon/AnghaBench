#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_4__ {int dwHelpContext; int syskind; int libflags; int ver_major; int ver_minor; int /*<<< orphan*/  guid_list; int /*<<< orphan*/  guid; int /*<<< orphan*/  set_lcid; int /*<<< orphan*/  lcid; int /*<<< orphan*/  ptr_size; int /*<<< orphan*/  HelpFile; int /*<<< orphan*/  DocString; } ;
typedef  char* LPVOID ;
typedef  TYPE_1__ ITypeLibImpl ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int SLTG_LIBBLK_MAGIC ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ SUBLANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static DWORD FUNC8(LPVOID pLibBlk, ITypeLibImpl *pTypeLibImpl)
{
    char *ptr = pLibBlk;
    WORD w;

    if((w = *(WORD*)ptr) != SLTG_LIBBLK_MAGIC) {
        FUNC0("libblk magic = %04x\n", w);
	return 0;
    }

    ptr += 6;
    if((w = *(WORD*)ptr) != 0xffff) {
        FUNC0("LibBlk.res06 = %04x. Assumung string and skipping\n", w);
        ptr += w;
    }
    ptr += 2;

    ptr += FUNC4(ptr, &pTypeLibImpl->DocString, pTypeLibImpl);

    ptr += FUNC4(ptr, &pTypeLibImpl->HelpFile, pTypeLibImpl);

    pTypeLibImpl->dwHelpContext = *(DWORD*)ptr;
    ptr += 4;

    pTypeLibImpl->syskind = *(WORD*)ptr;
    pTypeLibImpl->ptr_size = FUNC7(pTypeLibImpl->syskind);
    ptr += 2;

    if(FUNC5(*(WORD*)ptr) == SUBLANG_NEUTRAL)
        pTypeLibImpl->lcid = pTypeLibImpl->set_lcid = FUNC2(FUNC1(FUNC3(*(WORD*)ptr),0),0);
    else
        pTypeLibImpl->lcid = pTypeLibImpl->set_lcid = 0;
    ptr += 2;

    ptr += 4; /* skip res12 */

    pTypeLibImpl->libflags = *(WORD*)ptr;
    ptr += 2;

    pTypeLibImpl->ver_major = *(WORD*)ptr;
    ptr += 2;

    pTypeLibImpl->ver_minor = *(WORD*)ptr;
    ptr += 2;

    pTypeLibImpl->guid = FUNC6(&pTypeLibImpl->guid_list, (GUID*)ptr, -2);
    ptr += sizeof(GUID);

    return ptr - (char*)pLibBlk;
}