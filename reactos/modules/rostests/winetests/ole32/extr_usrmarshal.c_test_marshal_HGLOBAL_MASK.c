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
typedef  scalar_t__ ULONG_PTR ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  RPC_MESSAGE ;
typedef  int /*<<< orphan*/  MIDL_STUB_MESSAGE ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ **) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ **) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  MSHCTX_LOCAL ; 
 int WDT_REMOTE_CALL ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 

__attribute__((used)) static void FUNC15(void)
{
    USER_MARSHAL_CB umcb;
    MIDL_STUB_MESSAGE stub_msg;
    RPC_MESSAGE rpc_msg;
    unsigned char *buffer;
    ULONG size, block_size;
    HGLOBAL hglobal;
    HGLOBAL hglobal2;
    unsigned char *wirehglobal;
    int i;

    hglobal = NULL;
    FUNC13(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
    size = FUNC8(&umcb.Flags, 0, &hglobal);
    /* native is poorly programmed and allocates 4/8 bytes more than it needs to
     * here - Wine doesn't have to emulate that */
    FUNC14((size == 8) || FUNC12(size == 12) || FUNC12(size == 16), "Size should be 8, instead of %d\n", size);
    buffer = FUNC10(FUNC0(), 0, size);
    FUNC13(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    FUNC7(&umcb.Flags, buffer, &hglobal);
    wirehglobal = buffer;
    FUNC14(*(ULONG *)wirehglobal == WDT_REMOTE_CALL, "Context should be WDT_REMOTE_CALL instead of 0x%08x\n", *(ULONG *)wirehglobal);
    wirehglobal += sizeof(ULONG);
    FUNC14(*(ULONG *)wirehglobal == 0, "buffer+4 should be HGLOBAL\n");
    FUNC13(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    hglobal2 = NULL;
    FUNC9(&umcb.Flags, buffer, &hglobal2);
    FUNC14(hglobal2 == hglobal, "Didn't unmarshal properly\n");
    FUNC11(FUNC0(), 0, buffer);
    FUNC13(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
    FUNC6(&umcb.Flags, &hglobal2);


    for(block_size = 0; block_size <= 17; block_size++)
    {
        ULONG actual_size, expected_size;

        hglobal = FUNC1(0, block_size);
        buffer = FUNC3(hglobal);
        for (i = 0; i < block_size; i++)
            buffer[i] = i;
        FUNC5(hglobal);
        actual_size = FUNC4(hglobal);
        expected_size = actual_size + 5 * sizeof(DWORD);
        FUNC13(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
        size = FUNC8(&umcb.Flags, 0, &hglobal);
        /* native is poorly programmed and allocates 4/8 bytes more than it needs to
         * here - Wine doesn't have to emulate that */
        FUNC14(size == expected_size ||
           FUNC12(size == expected_size + 4) ||
           FUNC12(size == expected_size + 8),
           "%d: got size %d\n", block_size, size);
        buffer = FUNC10(FUNC0(), 0, size);
        FUNC13(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
        FUNC7(&umcb.Flags, buffer, &hglobal);
        wirehglobal = buffer;
        FUNC14(*(ULONG *)wirehglobal == WDT_REMOTE_CALL, "Context should be WDT_REMOTE_CALL instead of 0x%08x\n", *(ULONG *)wirehglobal);
        wirehglobal += sizeof(ULONG);
        FUNC14(*(ULONG *)wirehglobal == (ULONG)(ULONG_PTR)hglobal, "buffer+0x4 should be HGLOBAL\n");
        wirehglobal += sizeof(ULONG);
        FUNC14(*(ULONG *)wirehglobal == actual_size, "%d: buffer+0x8 %08x\n", block_size, *(ULONG *)wirehglobal);
        wirehglobal += sizeof(ULONG);
        FUNC14(*(ULONG *)wirehglobal == (ULONG)(ULONG_PTR)hglobal, "buffer+0xc should be HGLOBAL\n");
        wirehglobal += sizeof(ULONG);
        FUNC14(*(ULONG *)wirehglobal == actual_size, "%d: buffer+0x10 %08x\n", block_size, *(ULONG *)wirehglobal);
        wirehglobal += sizeof(ULONG);
        for (i = 0; i < block_size; i++)
            FUNC14(wirehglobal[i] == i, "buffer+0x%x should be %d\n", 0x10 + i, i);

        FUNC13(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
        hglobal2 = NULL;
        FUNC9(&umcb.Flags, buffer, &hglobal2);
        FUNC14(hglobal2 != NULL, "Didn't unmarshal properly\n");
        FUNC11(FUNC0(), 0, buffer);
        FUNC13(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
        FUNC6(&umcb.Flags, &hglobal2);
        FUNC2(hglobal);
    }
}