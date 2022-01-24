#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_5__ {int /*<<< orphan*/  Flags; } ;
typedef  TYPE_1__ USER_MARSHAL_CB ;
typedef  int ULONG ;
struct TYPE_6__ {int mm; int xExt; int yExt; scalar_t__ hMF; } ;
typedef  int /*<<< orphan*/  RPC_MESSAGE ;
typedef  int /*<<< orphan*/  MIDL_STUB_MESSAGE ;
typedef  TYPE_2__ METAFILEPICT ;
typedef  int /*<<< orphan*/ * HMETAFILEPICT ;
typedef  scalar_t__ DWORD_PTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ **) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 unsigned char* FUNC9 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ **) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int MM_ISOTROPIC ; 
 int /*<<< orphan*/  MSHCTX_DIFFERENTMACHINE ; 
 int USER_MARSHAL_PTR_PREFIX ; 
 int WDT_REMOTE_CALL ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*,...) ; 

__attribute__((used)) static void FUNC15(void)
{
    USER_MARSHAL_CB umcb;
    MIDL_STUB_MESSAGE stub_msg;
    RPC_MESSAGE rpc_msg;
    unsigned char *buffer, *buffer_end;
    ULONG size;
    HMETAFILEPICT hmfp;
    HMETAFILEPICT hmfp2 = NULL;
    METAFILEPICT *pmfp;
    unsigned char *wirehmfp;

    hmfp = FUNC2(GMEM_MOVEABLE, sizeof(*pmfp));
    pmfp = FUNC4(hmfp);
    pmfp->mm = MM_ISOTROPIC;
    pmfp->xExt = 1;
    pmfp->yExt = 2;
    pmfp->hMF = FUNC12();
    FUNC5(hmfp);

    FUNC13(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_DIFFERENTMACHINE);
    size = FUNC8(&umcb.Flags, 1, &hmfp);
    FUNC14(size > 24, "size should be at least 24 bytes, not %d\n", size);
    buffer = FUNC10(FUNC1(), 0, size);
    FUNC13(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    buffer_end = FUNC7(&umcb.Flags, buffer + 1, &hmfp);
    wirehmfp = buffer + 4;
    FUNC14(*(DWORD *)wirehmfp == WDT_REMOTE_CALL, "wirestgm + 0x0 should be WDT_REMOTE_CALL instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);
    FUNC14(*(DWORD *)wirehmfp == (DWORD)(DWORD_PTR)hmfp, "wirestgm + 0x4 should be hmf instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);
    FUNC14(*(DWORD *)wirehmfp == MM_ISOTROPIC, "wirestgm + 0x8 should be MM_ISOTROPIC instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);
    FUNC14(*(DWORD *)wirehmfp == 1, "wirestgm + 0xc should be 1 instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);
    FUNC14(*(DWORD *)wirehmfp == 2, "wirestgm + 0x10 should be 2 instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);
    FUNC14(*(DWORD *)wirehmfp == USER_MARSHAL_PTR_PREFIX, "wirestgm + 0x14 should be \"User\" instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);
    FUNC14(*(DWORD *)wirehmfp == WDT_REMOTE_CALL, "wirestgm + 0x18 should be WDT_REMOTE_CALL instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);
    pmfp = FUNC4(hmfp);
    FUNC14(*(DWORD *)wirehmfp == (DWORD)(DWORD_PTR)pmfp->hMF, "wirestgm + 0x1c should be pmfp->hMF instead of 0x%08x\n", *(DWORD *)wirehmfp);
    FUNC5(hmfp);
    wirehmfp += sizeof(DWORD);
    /* Note use (buffer_end - buffer) instead of size here, because size is an
     * overestimate with native */
    FUNC14(*(DWORD *)wirehmfp == (buffer_end - buffer - 0x2c), "wirestgm + 0x20 should be size - 0x34 instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);
    FUNC14(*(DWORD *)wirehmfp == (buffer_end - buffer - 0x2c), "wirestgm + 0x24 should be size - 0x34 instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);
    FUNC14(*(WORD *)wirehmfp == 1, "wirehmfp + 0x28 should be 1 instead of 0x%08x\n", *(DWORD *)wirehmfp);
    /* ... rest of data not tested - refer to tests for GetMetaFileBits
     * at this point */

    FUNC13(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    FUNC9(&umcb.Flags, buffer + 1, &hmfp2);
    FUNC14(hmfp2 != NULL, "HMETAFILEPICT didn't unmarshal\n");
    FUNC11(FUNC1(), 0, buffer);
    FUNC13(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_DIFFERENTMACHINE);
    FUNC6(&umcb.Flags, &hmfp2);
    pmfp = FUNC4(hmfp);
    FUNC0(pmfp->hMF);
    FUNC5(hmfp);
    FUNC3(hmfp);

    /* test NULL emf */
    hmfp = NULL;

    FUNC13(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_DIFFERENTMACHINE);
    size = FUNC8(&umcb.Flags, 1, &hmfp);
    FUNC14(size == 12, "size should be 12 bytes, not %d\n", size);
    buffer = FUNC10(FUNC1(), 0, size);
    FUNC13(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    buffer_end = FUNC7(&umcb.Flags, buffer + 1, &hmfp);
    FUNC14(buffer_end == buffer + size, "got %p buffer %p\n", buffer_end, buffer);
    wirehmfp = buffer + 4;
    FUNC14(*(DWORD *)wirehmfp == WDT_REMOTE_CALL, "wirestgm + 0x0 should be WDT_REMOTE_CALL instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);
    FUNC14(*(DWORD *)wirehmfp == (DWORD)(DWORD_PTR)hmfp, "wirestgm + 0x4 should be hmf instead of 0x%08x\n", *(DWORD *)wirehmfp);
    wirehmfp += sizeof(DWORD);

    hmfp2 = NULL;
    FUNC13(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_DIFFERENTMACHINE);
    buffer_end = FUNC9(&umcb.Flags, buffer + 1, &hmfp2);
    FUNC14(buffer_end == buffer + size, "got %p buffer %p\n", buffer_end, buffer);
    FUNC14(hmfp2 == NULL, "NULL HMETAFILE didn't unmarshal\n");
    FUNC11(FUNC1(), 0, buffer);
    FUNC13(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_DIFFERENTMACHINE);
    FUNC6(&umcb.Flags, &hmfp2);
}