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
struct TYPE_3__ {int /*<<< orphan*/  marshal_data; } ;
typedef  TYPE_1__ ole_clipbrd ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/  CLIPBRD_E_CANT_SET ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int GMEM_DDESHARE ; 
 int GMEM_MOVEABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wine_marshal_clipboard_format ; 

__attribute__((used)) static HRESULT FUNC5(ole_clipbrd *clipbrd, IDataObject *data)
{
    HGLOBAL h;

    if(data)
    {
        HGLOBAL h_stm;
        FUNC0(clipbrd->marshal_data, &h_stm);
        FUNC4(h_stm, GMEM_DDESHARE|GMEM_MOVEABLE, &h);
    }
    else /* flushed */
        h = FUNC1(GMEM_DDESHARE|GMEM_MOVEABLE, 1);

    if(!h) return E_OUTOFMEMORY;

    if(!FUNC3(wine_marshal_clipboard_format, h))
    {
        FUNC2(h);
        return CLIPBRD_E_CANT_SET;
    }
    return S_OK;
}