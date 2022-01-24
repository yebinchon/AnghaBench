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
typedef  int /*<<< orphan*/  IPicture ;
typedef  scalar_t__ HRESULT ;
typedef  short DWORD ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  IID_IPicture ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,short*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,short*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 short PICTYPE_UNINITIALIZED ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int,char*,short) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    IPicture *pic;
    HRESULT hres;
    short type;
    DWORD attr;

    hres = FUNC3(NULL, &IID_IPicture, TRUE, (void **)&pic);
    FUNC4(hres == S_OK, "Failed to create a picture, hr %#x.\n", hres);
    hres = FUNC2(pic, &type);
    FUNC4(hres == S_OK, "IPicture_get_Type does not return S_OK, but 0x%08x\n", hres);
    FUNC4(type == PICTYPE_UNINITIALIZED, "Expected type = PICTYPE_UNINITIALIZED, got = %d\n", type);

    hres = FUNC1(pic, NULL);
    FUNC5(hres, E_POINTER);

    attr = 0xdeadbeef;
    hres = FUNC1(pic, &attr);
    FUNC5(hres, S_OK);
    FUNC4(attr == 0, "IPicture_get_Attributes does not reset attr to zero, got %d\n", attr);

    FUNC0(pic);
}