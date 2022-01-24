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
struct bitstream {int length; scalar_t__ current; int /*<<< orphan*/  const* buffer; } ;
typedef  int WORD ;
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  string_list; } ;
typedef  int /*<<< orphan*/  const TLBString ;
typedef  TYPE_1__ ITypeLibImpl ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__* BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,scalar_t__*,int) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int,struct bitstream*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char const*) ; 
 int FUNC6 (scalar_t__*) ; 

__attribute__((used)) static const TLBString *FUNC7(const BYTE *table, const char *stream, DWORD stream_length, ITypeLibImpl *lib)
{
    DWORD buf_size, table_size;
    const char *p;
    struct bitstream bits;
    BSTR buf;
    TLBString *tlbstr;

    if (!stream_length) return NULL;

    bits.buffer = (const BYTE *)stream;
    bits.length = stream_length;
    bits.current = 0;

    buf_size = *(const WORD *)table;
    table += sizeof(WORD);
    table_size = *(const DWORD *)table;
    table += sizeof(DWORD);

    buf = FUNC1(NULL, buf_size);
    buf[0] = 0;

    while ((p = FUNC4(table, table_size, &bits)))
    {
        static const WCHAR spaceW[] = { ' ',0 };
        if (buf[0]) FUNC5(buf, spaceW);
        FUNC0(CP_ACP, 0, p, -1, buf + FUNC6(buf), buf_size - FUNC6(buf));
    }

    tlbstr = FUNC3(&lib->string_list, buf);
    FUNC2(buf);

    return tlbstr;
}