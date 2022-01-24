#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* wireHICON ;
struct TYPE_7__ {int /*<<< orphan*/  Flags; } ;
typedef  TYPE_3__ USER_MARSHAL_CB ;
typedef  int ULONG ;
struct TYPE_5__ {scalar_t__ hInproc; int /*<<< orphan*/  hRemote; } ;
struct TYPE_6__ {TYPE_1__ u; int /*<<< orphan*/  fContext; } ;
typedef  int /*<<< orphan*/  RPC_MESSAGE ;
typedef  int /*<<< orphan*/  MIDL_STUB_MESSAGE ;
typedef  scalar_t__ LONG_PTR ;
typedef  scalar_t__ HICON ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,unsigned char*,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *,unsigned char*,scalar_t__*) ; 
 unsigned char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  MSHCTX_LOCAL ; 
 int /*<<< orphan*/  WDT_INPROC_CALL ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static void FUNC11(void)
{
    static const BYTE bmp_bits[1024];
    MIDL_STUB_MESSAGE stub_msg;
    HICON hIcon, hIcon2;
    USER_MARSHAL_CB umcb;
    RPC_MESSAGE rpc_msg;
    unsigned char *buffer, *buffer_end;
    wireHICON wirehicon;
    ULONG size;

    hIcon = FUNC0(0, 16, 16, 1, 1, bmp_bits, bmp_bits);
    FUNC10(hIcon != 0, "CreateIcon failed\n");

    FUNC9(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
    size = FUNC5(&umcb.Flags, 1, &hIcon);
    FUNC10(size == 4 + sizeof(*wirehicon), "Wrong size %d\n", size);

    buffer = FUNC7(FUNC2(), 0, size);
    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = FUNC4(&umcb.Flags, buffer + 1, &hIcon);
    FUNC10(buffer_end == buffer + 4 + sizeof(*wirehicon), "got %p buffer %p\n", buffer_end, buffer);
    wirehicon = (wireHICON)(buffer + 4);
    FUNC10(wirehicon->fContext == WDT_INPROC_CALL, "Context should be WDT_INPROC_CALL instead of 0x%08x\n", wirehicon->fContext);
    FUNC10(wirehicon->u.hInproc == (LONG_PTR)hIcon, "Marshaled value should be %p instead of %x\n", hIcon, wirehicon->u.hRemote);

    FUNC9(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = FUNC6(&umcb.Flags, buffer + 1, &hIcon2);
    FUNC10(buffer_end == buffer + 4 + sizeof(*wirehicon), "got %p buffer %p\n", buffer_end, buffer);
    FUNC10(hIcon == hIcon2, "Didn't unmarshal properly\n");
    FUNC8(FUNC2(), 0, buffer);

    FUNC9(&umcb, &stub_msg, &rpc_msg, NULL, 0, MSHCTX_LOCAL);
    FUNC3(&umcb.Flags, &hIcon2);
    FUNC1(hIcon);
}