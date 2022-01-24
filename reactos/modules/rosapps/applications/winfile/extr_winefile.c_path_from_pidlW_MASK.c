#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mkid; } ;
typedef  int /*<<< orphan*/  STRRET ;
typedef  char* LPWSTR ;
typedef  TYPE_1__* LPITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHGDN_FORPARSING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static HRESULT FUNC4(IShellFolder* folder, LPITEMIDLIST pidl, LPWSTR buffer, int len)
{
	STRRET str;

	 /* SHGDN_FORPARSING: get full path of id list */
	HRESULT hr = FUNC0(folder, pidl, SHGDN_FORPARSING, &str);

	if (FUNC1(hr)) {
		FUNC3(&str, &pidl->mkid, buffer, len);
		FUNC2(&str);
	} else
		buffer[0] = '\0';

	return hr;
}