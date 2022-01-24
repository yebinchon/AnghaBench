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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  PACL ;
typedef  int BOOL ;
typedef  int /*<<< orphan*/  ACL ;

/* Variables and functions */
 int ACL_REVISION ; 
 int ACL_REVISION1 ; 
 int ACL_REVISION2 ; 
 int ACL_REVISION3 ; 
 int ACL_REVISION4 ; 
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    char buffer[256];
    PACL pAcl = (PACL)buffer;
    BOOL ret;

    FUNC3(0xdeadbeef);
    ret = FUNC1(pAcl, sizeof(ACL) - 1, ACL_REVISION);
    if (!ret && FUNC0() == ERROR_CALL_NOT_IMPLEMENTED)
    {
        FUNC5("InitializeAcl is not implemented\n");
        return;
    }

    FUNC4(!ret && FUNC0() == ERROR_INSUFFICIENT_BUFFER, "InitializeAcl with too small a buffer should have failed with ERROR_INSUFFICIENT_BUFFER instead of %d\n", FUNC0());

    FUNC3(0xdeadbeef);
    ret = FUNC1(pAcl, 0xffffffff, ACL_REVISION);
    FUNC4(!ret && FUNC0() == ERROR_INVALID_PARAMETER, "InitializeAcl with too large a buffer should have failed with ERROR_INVALID_PARAMETER instead of %d\n", FUNC0());

    FUNC3(0xdeadbeef);
    ret = FUNC1(pAcl, sizeof(buffer), ACL_REVISION1);
    FUNC4(!ret && FUNC0() == ERROR_INVALID_PARAMETER, "InitializeAcl(ACL_REVISION1) should have failed with ERROR_INVALID_PARAMETER instead of %d\n", FUNC0());

    ret = FUNC1(pAcl, sizeof(buffer), ACL_REVISION2);
    FUNC4(ret, "InitializeAcl(ACL_REVISION2) failed with error %d\n", FUNC0());

    ret = FUNC2(pAcl);
    FUNC4(ret, "IsValidAcl failed with error %d\n", FUNC0());

    ret = FUNC1(pAcl, sizeof(buffer), ACL_REVISION3);
    FUNC4(ret, "InitializeAcl(ACL_REVISION3) failed with error %d\n", FUNC0());

    ret = FUNC2(pAcl);
    FUNC4(ret, "IsValidAcl failed with error %d\n", FUNC0());

    FUNC3(0xdeadbeef);
    ret = FUNC1(pAcl, sizeof(buffer), ACL_REVISION4);
    if (FUNC0() != ERROR_INVALID_PARAMETER)
    {
        FUNC4(ret, "InitializeAcl(ACL_REVISION4) failed with error %d\n", FUNC0());

        ret = FUNC2(pAcl);
        FUNC4(ret, "IsValidAcl failed with error %d\n", FUNC0());
    }
    else
        FUNC5("ACL_REVISION4 is not implemented on NT4\n");

    FUNC3(0xdeadbeef);
    ret = FUNC1(pAcl, sizeof(buffer), -1);
    FUNC4(!ret && FUNC0() == ERROR_INVALID_PARAMETER, "InitializeAcl(-1) failed with error %d\n", FUNC0());
}