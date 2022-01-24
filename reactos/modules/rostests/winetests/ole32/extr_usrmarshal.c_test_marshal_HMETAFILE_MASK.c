#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_3__ {int /*<<< orphan*/  Flags; } ;
typedef  TYPE_1__ USER_MARSHAL_CB ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  RPC_MESSAGE ;
typedef  int /*<<< orphan*/  MIDL_STUB_MESSAGE ;
typedef  int /*<<< orphan*/ * HMETAFILE ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ **) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  MSHCTX_DIFFERENTMACHINE ; 
 int WDT_REMOTE_CALL ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    USER_MARSHAL_CB umcb;
    MIDL_STUB_MESSAGE stub_msg;
    RPC_MESSAGE rpc_msg;
    unsigned char *buffer;
    ULONG size;
    HMETAFILE hmf;
    HMETAFILE hmf2 = NULL;
    unsigned char *wirehmf;

    hmf = FUNC8();

    FUNC9(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_DIFFERENTMACHINE);
    size = FUNC4(&umcb.Flags, 0, &hmf);
    FUNC10(size > 20, "size should be at least 20 bytes, not %d\n", size);
    buffer = FUNC6(FUNC1(), 0, size);
    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    FUNC3(&umcb.Flags, buffer, &hmf);
    wirehmf = buffer;
    FUNC10(*(DWORD *)wirehmf == WDT_REMOTE_CALL, "wirestgm + 0x0 should be WDT_REMOTE_CALL instead of 0x%08x\n", *(DWORD *)wirehmf);
    wirehmf += sizeof(DWORD);
    FUNC10(*(DWORD *)wirehmf == (DWORD)(DWORD_PTR)hmf, "wirestgm + 0x4 should be hmf instead of 0x%08x\n", *(DWORD *)wirehmf);
    wirehmf += sizeof(DWORD);
    FUNC10(*(DWORD *)wirehmf == (size - 0x10), "wirestgm + 0x8 should be size - 0x10 instead of 0x%08x\n", *(DWORD *)wirehmf);
    wirehmf += sizeof(DWORD);
    FUNC10(*(DWORD *)wirehmf == (size - 0x10), "wirestgm + 0xc should be size - 0x10 instead of 0x%08x\n", *(DWORD *)wirehmf);
    wirehmf += sizeof(DWORD);
    FUNC10(*(WORD *)wirehmf == 1, "wirestgm + 0x10 should be 1 instead of 0x%08x\n", *(DWORD *)wirehmf);
    wirehmf += sizeof(DWORD);
    /* ... rest of data not tested - refer to tests for GetMetaFileBits
     * at this point */

    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    FUNC5(&umcb.Flags, buffer, &hmf2);
    FUNC10(hmf2 != NULL, "HMETAFILE didn't unmarshal\n");
    FUNC7(FUNC1(), 0, buffer);
    FUNC2(&umcb.Flags, &hmf2);
    FUNC0(hmf);

    /* test NULL emf */
    hmf = NULL;

    size = FUNC4(&umcb.Flags, 0, &hmf);
    FUNC10(size == 8, "size should be 8 bytes, not %d\n", size);
    buffer = FUNC6(FUNC1(), 0, size);
    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    FUNC3(&umcb.Flags, buffer, &hmf);
    wirehmf = buffer;
    FUNC10(*(DWORD *)wirehmf == WDT_REMOTE_CALL, "wirestgm + 0x0 should be WDT_REMOTE_CALL instead of 0x%08x\n", *(DWORD *)wirehmf);
    wirehmf += sizeof(DWORD);
    FUNC10(*(DWORD *)wirehmf == (DWORD)(DWORD_PTR)hmf, "wirestgm + 0x4 should be hmf instead of 0x%08x\n", *(DWORD *)wirehmf);
    wirehmf += sizeof(DWORD);

    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    FUNC5(&umcb.Flags, buffer, &hmf2);
    FUNC10(hmf2 == NULL, "NULL HMETAFILE didn't unmarshal\n");
    FUNC7(FUNC1(), 0, buffer);
    FUNC2(&umcb.Flags, &hmf2);
}