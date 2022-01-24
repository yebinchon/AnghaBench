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
struct TYPE_3__ {int /*<<< orphan*/  Flags; } ;
typedef  TYPE_1__ USER_MARSHAL_CB ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  RPC_MESSAGE ;
typedef  int /*<<< orphan*/  MIDL_STUB_MESSAGE ;
typedef  int /*<<< orphan*/ * HENHMETAFILE ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EMR_HEADER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ **) ; 
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
    unsigned char *buffer, *buffer_end;
    ULONG size;
    HENHMETAFILE hemf;
    HENHMETAFILE hemf2 = NULL;
    unsigned char *wirehemf;

    hemf = FUNC8();

    FUNC9(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_DIFFERENTMACHINE);
    size = FUNC4(&umcb.Flags, 1, &hemf);
    FUNC10(size > 24, "size should be at least 24 bytes, not %d\n", size);
    buffer = FUNC6(FUNC1(), 0, size);
    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    buffer_end = FUNC3(&umcb.Flags, buffer + 1, &hemf);
    FUNC10(buffer_end == buffer + size, "got %p buffer %p\n", buffer_end, buffer);
    wirehemf = buffer + 4;
    FUNC10(*(DWORD *)wirehemf == WDT_REMOTE_CALL, "wirestgm + 0x0 should be WDT_REMOTE_CALL instead of 0x%08x\n", *(DWORD *)wirehemf);
    wirehemf += sizeof(DWORD);
    FUNC10(*(DWORD *)wirehemf == (DWORD)(DWORD_PTR)hemf, "wirestgm + 0x4 should be hemf instead of 0x%08x\n", *(DWORD *)wirehemf);
    wirehemf += sizeof(DWORD);
    FUNC10(*(DWORD *)wirehemf == (size - 0x14), "wirestgm + 0x8 should be size - 0x14 instead of 0x%08x\n", *(DWORD *)wirehemf);
    wirehemf += sizeof(DWORD);
    FUNC10(*(DWORD *)wirehemf == (size - 0x14), "wirestgm + 0xc should be size - 0x14 instead of 0x%08x\n", *(DWORD *)wirehemf);
    wirehemf += sizeof(DWORD);
    FUNC10(*(DWORD *)wirehemf == EMR_HEADER, "wirestgm + 0x10 should be EMR_HEADER instead of %d\n", *(DWORD *)wirehemf);
    /* ... rest of data not tested - refer to tests for GetEnhMetaFileBits
     * at this point */

    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    buffer_end = FUNC5(&umcb.Flags, buffer + 1, &hemf2);
    FUNC10(buffer_end == buffer + size, "got %p buffer %p\n", buffer_end, buffer);
    FUNC10(hemf2 != NULL, "HENHMETAFILE didn't unmarshal\n");
    FUNC7(FUNC1(), 0, buffer);
    FUNC9(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_DIFFERENTMACHINE);
    FUNC2(&umcb.Flags, &hemf2);
    FUNC0(hemf);

    /* test NULL emf */
    hemf = NULL;

    FUNC9(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_DIFFERENTMACHINE);
    size = FUNC4(&umcb.Flags, 1, &hemf);
    FUNC10(size == 12, "size should be 12 bytes, not %d\n", size);
    buffer = FUNC6(FUNC1(), 0, size);
    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    buffer_end = FUNC3(&umcb.Flags, buffer + 1, &hemf);
    FUNC10(buffer_end == buffer + size, "got %p buffer %p\n", buffer_end, buffer);
    wirehemf = buffer + 4;
    FUNC10(*(DWORD *)wirehemf == WDT_REMOTE_CALL, "wirestgm + 0x0 should be WDT_REMOTE_CALL instead of 0x%08x\n", *(DWORD *)wirehemf);
    wirehemf += sizeof(DWORD);
    FUNC10(*(DWORD *)wirehemf == (DWORD)(DWORD_PTR)hemf, "wirestgm + 0x4 should be hemf instead of 0x%08x\n", *(DWORD *)wirehemf);

    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    buffer_end = FUNC5(&umcb.Flags, buffer + 1, &hemf2);
    FUNC10(buffer_end == buffer + size, "got %p buffer %p\n", buffer_end, buffer);
    FUNC10(hemf2 == NULL, "NULL HENHMETAFILE didn't unmarshal\n");
    FUNC7(FUNC1(), 0, buffer);
    FUNC9(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_DIFFERENTMACHINE);
    FUNC2(&umcb.Flags, &hemf2);
}