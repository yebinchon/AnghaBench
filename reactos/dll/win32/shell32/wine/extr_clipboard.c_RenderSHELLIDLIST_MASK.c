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
typedef  int UINT ;
struct TYPE_3__ {int cidl; int* aoffset; } ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  TYPE_1__* LPIDA ;
typedef  scalar_t__ LPBYTE ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  CIDA ;

/* Variables and functions */
 int GHND ; 
 int GMEM_SHARE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 

HGLOBAL FUNC6 (LPITEMIDLIST pidlRoot, LPITEMIDLIST * apidl, UINT cidl)
{
	UINT i;
	int offset = 0, sizePidl, size;
	HGLOBAL hGlobal;
	LPIDA	pcida;

	FUNC4("(%p,%p,%u)\n", pidlRoot, apidl, cidl);

	/* get the size needed */
	size = sizeof(CIDA) + sizeof (UINT)*(cidl);	/* header */
	size += FUNC3 (pidlRoot);			/* root pidl */
	for(i=0; i<cidl; i++)
	{
	  size += FUNC3(apidl[i]);			/* child pidls */
	}

	/* fill the structure */
	hGlobal = FUNC0(GHND|GMEM_SHARE, size);
	if(!hGlobal) return hGlobal;
	pcida = FUNC1 (hGlobal);
	pcida->cidl = cidl;

	/* root pidl */
	offset = sizeof(CIDA) + sizeof (UINT)*(cidl);
	pcida->aoffset[0] = offset;			/* first element */
	sizePidl = FUNC3 (pidlRoot);
	FUNC5(((LPBYTE)pcida)+offset, pidlRoot, sizePidl);
	offset += sizePidl;

	for(i=0; i<cidl; i++)				/* child pidls */
	{
	  pcida->aoffset[i+1] = offset;
	  sizePidl = FUNC3(apidl[i]);
	  FUNC5(((LPBYTE)pcida)+offset, apidl[i], sizePidl);
	  offset += sizePidl;
	}

	FUNC2(hGlobal);
	return hGlobal;
}