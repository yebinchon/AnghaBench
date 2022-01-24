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
struct TYPE_3__ {scalar_t__ hMF; } ;
typedef  TYPE_1__ METAFILEPICT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HGLOBAL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC6(HGLOBAL src, HGLOBAL *pdest)
{
    HRESULT hr;
    HGLOBAL dest;
    METAFILEPICT *dest_ptr;

    *pdest = NULL;

    /* Copy the METAFILEPICT structure. */
    hr = FUNC5(src, GMEM_DDESHARE|GMEM_MOVEABLE, &dest);
    if (FUNC1(hr)) return hr;

    dest_ptr = FUNC3(dest);
    if (!dest_ptr) return E_FAIL;

    /* Give the new METAFILEPICT a separate HMETAFILE. */
    dest_ptr->hMF = FUNC0(dest_ptr->hMF, NULL);
    if (dest_ptr->hMF)
    {
       FUNC4(dest);
       *pdest = dest;
       return S_OK;
    }
    else
    {
       FUNC4(dest);
       FUNC2(dest);
       return E_FAIL;
    }
}