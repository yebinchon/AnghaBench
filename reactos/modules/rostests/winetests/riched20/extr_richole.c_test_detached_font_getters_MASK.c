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
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  ITextFont ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ CO_E_RELEASED ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,float*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(ITextFont *font, BOOL duplicate)
{
  HRESULT hr, hrexp = duplicate ? S_OK : CO_E_RELEASED;
  LONG value;
  float size;
  BSTR str;

  hr = FUNC0(font, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC0(font, &value);
  FUNC10(hr == hrexp, "got 0x%08x\n", hr);

  hr = FUNC1(font, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC1(font, &value);
  FUNC10(hr == hrexp, "got 0x%08x\n", hr);

  hr = FUNC2(font, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC2(font, &value);
  FUNC10(hr == hrexp, "got 0x%08x\n", hr);

  hr = FUNC3(font, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC3(font, &value);
  FUNC10(hr == hrexp, "got 0x%08x\n", hr);

  hr = FUNC4(font, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC4(font, &str);
  FUNC10(hr == hrexp, "got 0x%08x\n", hr);

  hr = FUNC5(font, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC5(font, &size);
  FUNC10(hr == hrexp, "got 0x%08x\n", hr);

  hr = FUNC6(font, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC6(font, &value);
  FUNC10(hr == hrexp, "got 0x%08x\n", hr);

  hr = FUNC7(font, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC7(font, &value);
  FUNC10(hr == hrexp, "got 0x%08x\n", hr);

  hr = FUNC8(font, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC8(font, &value);
  FUNC10(hr == hrexp, "got 0x%08x\n", hr);

  hr = FUNC9(font, NULL);
  FUNC10(hr == E_INVALIDARG, "got 0x%08x\n", hr);

  hr = FUNC9(font, &value);
  FUNC10(hr == hrexp, "got 0x%08x\n", hr);
}