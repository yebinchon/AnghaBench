#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {int /*<<< orphan*/ * iDesktop; } ;
struct TYPE_5__ {char* cFileName; } ;
struct TYPE_6__ {scalar_t__ etype; struct TYPE_6__* up; TYPE_1__ data; int /*<<< orphan*/  pidl; int /*<<< orphan*/ * folder; } ;
typedef  int SFGAOF ;
typedef  char* PWSTR ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ Entry ;

/* Variables and functions */
 scalar_t__ ET_SHELL ; 
 scalar_t__ ET_UNIX ; 
 TYPE_4__ Globals ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int SFGAO_FILESYSTEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Entry* dir, PWSTR path)
{
	Entry* entry;
	int len = 0;
	int level = 0;

	if (dir->etype == ET_SHELL)
	{
		SFGAOF attribs;
		HRESULT hr = S_OK;

		path[0] = '\0';

		attribs = 0;

		if (dir->folder)
			hr = FUNC0(dir->folder, 1, (LPCITEMIDLIST*)&dir->pidl, &attribs);

		if (FUNC1(hr) && (attribs&SFGAO_FILESYSTEM)) {
			IShellFolder* parent = dir->up? dir->up->folder: Globals.iDesktop;

			hr = FUNC4(parent, dir->pidl, path, MAX_PATH);
		}
	}
	else
	{
		for(entry=dir; entry; level++) {
			LPCWSTR name;
			int l;

			{
				LPCWSTR s;
				name = entry->data.cFileName;
				s = name;

				for(l=0; *s && *s != '/' && *s != '\\'; s++)
					l++;
			}

			if (entry->up) {
				if (l > 0) {
					FUNC3(path+l+1, path, len*sizeof(WCHAR));
					FUNC2(path+1, name, l*sizeof(WCHAR));
					len += l+1;

					if (entry->etype == ET_UNIX)
						path[0] = '/';
					else
                                                path[0] = '\\';
				}

				entry = entry->up;
			} else {
				FUNC3(path+l, path, len*sizeof(WCHAR));
				FUNC2(path, name, l*sizeof(WCHAR));
				len += l;
				break;
			}
		}

		if (!level) {
			if (entry->etype == ET_UNIX)
				path[len++] = '/';
			else
				path[len++] = '\\';
		}

		path[len] = '\0';
	}
}