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
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC1(ME_TextEditor *editor, LONG *length)
{
    if (!length)
        return E_INVALIDARG;

    *length = FUNC0(editor) + 1;
    return S_OK;
}