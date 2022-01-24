#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ MSHCTX ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  GUID ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MSHCTX_INPROC ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(IStream *pStream, MSHCTX mshctx, void *ptr, DWORD mshlflags)
{
    HGLOBAL hglobal;
    DWORD size;
    char *marshal_data;
    HRESULT hr;

    hr = FUNC0(pStream, &hglobal);
    FUNC6(hr, GetHGlobalFromStream);

    size = FUNC2(hglobal);

    marshal_data = FUNC1(hglobal);

    if (mshctx == MSHCTX_INPROC)
    {
        DWORD expected_size = FUNC7(3*sizeof(DWORD) + sizeof(GUID));
        FUNC5(size == expected_size ||
           FUNC4(size == (2*sizeof(DWORD))) /* Win9x & NT4 */,
           "size should have been %d instead of %d\n", expected_size, size);

        FUNC5(*(DWORD *)marshal_data == mshlflags, "expected 0x%x, but got 0x%x for mshctx\n", mshlflags, *(DWORD *)marshal_data);
        marshal_data += sizeof(DWORD);
        FUNC5(*(void **)marshal_data == ptr, "expected %p, but got %p for mshctx\n", ptr, *(void **)marshal_data);
        marshal_data += sizeof(void *);
        if (sizeof(void*) == 4 && size >= 3*sizeof(DWORD))
        {
            FUNC5(*(DWORD *)marshal_data == 0, "expected 0x0, but got 0x%x\n", *(DWORD *)marshal_data);
            marshal_data += sizeof(DWORD);
        }
        if (size >= 3*sizeof(DWORD) + sizeof(GUID))
        {
            FUNC8("got guid data: %s\n", FUNC9((GUID *)marshal_data));
        }
    }
    else
    {
        FUNC5(size > sizeof(DWORD), "size should have been > sizeof(DWORD), not %d\n", size);
        FUNC5(*(DWORD *)marshal_data == 0x574f454d /* MEOW */,
            "marshal data should be filled by standard marshal and start with MEOW signature\n");
    }

    FUNC3(hglobal);
}