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
struct TYPE_3__ {int nLength; int /*<<< orphan*/ * lpSecurityDescriptor; void* bInheritHandle; } ;
typedef  int /*<<< orphan*/  SECURITY_DESCRIPTOR ;
typedef  TYPE_1__ SECURITY_ATTRIBUTES ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_215 ; 
 int /*<<< orphan*/  MSG_216 ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC6 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SECURITY_DESCRIPTOR_REVISION ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* FUNC9 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

BOOL FUNC13(BOOL save, char* path, char** buffer, DWORD* size)
{
	SECURITY_ATTRIBUTES s_attr, *sa = NULL;
	SECURITY_DESCRIPTOR s_desc;
	PSID sid = NULL;
	HANDLE handle;
	BOOL r;
	BOOL ret = FALSE;

	// Change the owner from admin to regular user
	sid = FUNC3();
	if ( (sid != NULL)
	  && FUNC4(&s_desc, SECURITY_DESCRIPTOR_REVISION)
	  && FUNC7(&s_desc, sid, FALSE) ) {
		s_attr.nLength = sizeof(SECURITY_ATTRIBUTES);
		s_attr.bInheritHandle = FALSE;
		s_attr.lpSecurityDescriptor = &s_desc;
		sa = &s_attr;
	} else {
		FUNC12("Could not set security descriptor: %s\n", FUNC8());
	}

	if (!save) {
		*buffer = NULL;
	}
	handle = FUNC1(path, save?GENERIC_WRITE:GENERIC_READ, FILE_SHARE_READ,
		sa, save?CREATE_ALWAYS:OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);

	if (handle == INVALID_HANDLE_VALUE) {
		FUNC12("Could not %s file '%s'\n", save?"create":"open", path);
		goto out;
	}

	if (save) {
		r = FUNC9(handle, *buffer, *size, size, NULL);
	} else {
		*size = FUNC2(handle, NULL);
		*buffer = (char*)FUNC10(*size);
		if (*buffer == NULL) {
			FUNC12("Could not allocate buffer for reading file\n");
			goto out;
		}
		r = FUNC6(handle, *buffer, *size, size, NULL);
	}

	if (!r) {
		FUNC12("I/O Error: %s\n", FUNC8());
		goto out;
	}

	FUNC5(0, save?MSG_216:MSG_215, path);
	ret = TRUE;

out:
	FUNC0(handle);
	if (!ret) {
		// Only leave a buffer allocated if successful
		*size = 0;
		if (!save) {
			FUNC11(*buffer);
		}
	}
	return ret;
}