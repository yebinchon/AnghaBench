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
typedef  int /*<<< orphan*/  lpStruct ;
typedef  int /*<<< orphan*/  attributes ;
struct TYPE_3__ {int nLength; int /*<<< orphan*/  lpSecurityDescriptor; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SECURITY_ATTRIBUTES ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SDDL_REVISION_1 ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC5 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void)
{
    BOOL ret;
    CHAR path_folder[MAX_PATH];
    CHAR path_file[MAX_PATH];
    const char *sddl_string_everyone_readonly = "D:PAI(A;;0x1200a9;;;WD)";
    SECURITY_ATTRIBUTES attributes = {0};
    char lpStruct[] = { 's', 't', 'r', 'i', 'n', 'g' };

    attributes.nLength = sizeof(attributes);
    ret = FUNC0(sddl_string_everyone_readonly, SDDL_REVISION_1, &attributes.lpSecurityDescriptor, NULL);
    FUNC9(ret == TRUE, "ConvertStringSecurityDescriptorToSecurityDescriptor failed: %d\n", FUNC2());

    FUNC3(MAX_PATH, path_folder);
    FUNC8(path_folder, "wine-test");

    FUNC10(path_file, path_folder);
    FUNC8(path_file, "\\tmp.ini");

    ret = FUNC1(path_folder, &attributes);
    FUNC9(ret == TRUE, "CreateDirectoryA failed: %d\n", FUNC2());

    ret = FUNC6("App", "key", "string", path_file);
    FUNC9(ret == FALSE, "Expected FALSE, got %d\n", ret);

    ret = FUNC5("App", "key=string", path_file);
    FUNC9(ret == FALSE, "Expected FALSE, got %d\n", ret);

    ret = FUNC7("App", "key", lpStruct, sizeof(lpStruct), path_file);
    FUNC9(ret == FALSE, "Expected FALSE, got %d\n", ret);

    ret = FUNC4(path_folder);
    FUNC9(ret == TRUE, "RemoveDirectoryA failed: %d\n", FUNC2());
}