#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WIN32_FIND_DATAW ;
typedef  char WCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  cFileName; } ;
struct TYPE_5__ {int level; void* scanned; struct TYPE_5__* down; struct TYPE_5__* next; void* bhfi_valid; int /*<<< orphan*/  bhfi; TYPE_3__ data; int /*<<< orphan*/  etype; void* expanded; struct TYPE_5__* up; } ;
typedef  scalar_t__* LPCWSTR ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ET_WINDOWS ; 
 void* FALSE ; 
 int /*<<< orphan*/  FILE_FLAG_BACKUP_SEMANTICS ; 
 int FILE_SHARE_DELETE ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 void* TRUE ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(Entry* dir, LPCWSTR path)
{
	Entry* first_entry = NULL;
	Entry* last = NULL;
	Entry* entry;

	int level = dir->level + 1;
	WIN32_FIND_DATAW w32fd;
	HANDLE hFind;
	HANDLE hFile;

	WCHAR buffer[MAX_PATH], *p;
	for(p=buffer; *path; )
		*p++ = *path++;

	*p++ = '\\';
	p[0] = '*';
	p[1] = '\0';

	hFind = FUNC3(buffer, &w32fd);

	if (hFind != INVALID_HANDLE_VALUE) {
		do {
			entry = FUNC6();

			if (!first_entry)
				first_entry = entry;

			if (last)
				last->next = entry;

			FUNC8(&entry->data, &w32fd, sizeof(WIN32_FIND_DATAW));
			entry->down = NULL;
			entry->up = dir;
			entry->expanded = FALSE;
			entry->scanned = FALSE;
			entry->level = level;
			entry->etype = ET_WINDOWS;
			entry->bhfi_valid = FALSE;

			FUNC7(p, entry->data.cFileName);

			hFile = FUNC1(buffer, GENERIC_READ, FILE_SHARE_READ|FILE_SHARE_WRITE|FILE_SHARE_DELETE,
								0, OPEN_EXISTING, FILE_FLAG_BACKUP_SEMANTICS, 0);

			if (hFile != INVALID_HANDLE_VALUE) {
				if (FUNC5(hFile, &entry->bhfi))
					entry->bhfi_valid = TRUE;

				FUNC0(hFile);
			}

			last = entry;
		} while(FUNC4(hFind, &w32fd));

		if (last)
			last->next = NULL;

		FUNC2(hFind);
	}

	dir->down = first_entry;
	dir->scanned = TRUE;
}