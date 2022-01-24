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
typedef  int /*<<< orphan*/  buf ;
typedef  void* ULONG ;
typedef  void IUnknown ;
typedef  int /*<<< orphan*/  IOleContainer ;
typedef  int /*<<< orphan*/  IEnumUnknown ;
typedef  void* HRESULT ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int,void**,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  OLECONTF_EMBEDDINGS ; 
 void* S_FALSE ; 
 void* S_OK ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(IOleContainer *container)
{
    IEnumUnknown *enum_unknown;
    IUnknown *buf[100] = {(void*)0xdeadbeef};
    ULONG fetched;
    HRESULT hres;

    enum_unknown = NULL;
    hres = FUNC2(container, OLECONTF_EMBEDDINGS, &enum_unknown);
    FUNC3(hres == S_OK, "EnumObjects failed: %08x\n", hres);
    FUNC3(enum_unknown != NULL, "enum_unknown == NULL\n");

    fetched = 0xdeadbeef;
    hres = FUNC0(enum_unknown, sizeof(buf)/sizeof(*buf), buf, &fetched);
    FUNC3(hres == S_FALSE, "Next returned %08x\n", hres);
    FUNC3(!fetched, "fetched = %d\n", fetched);
    FUNC3(buf[0] == (void*)0xdeadbeef, "buf[0] = %p\n", buf[0]);

    fetched = 0xdeadbeef;
    hres = FUNC0(enum_unknown, 1, buf, &fetched);
    FUNC3(hres == S_FALSE, "Next returned %08x\n", hres);
    FUNC3(!fetched, "fetched = %d\n", fetched);

    hres = FUNC0(enum_unknown, 1, buf, NULL);
    FUNC3(hres == S_FALSE, "Next returned %08x\n", hres);

    FUNC1(enum_unknown);
}