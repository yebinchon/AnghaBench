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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 scalar_t__ S_OK ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(LPSTR prodcode, LPSTR squashed)
{
    WCHAR guidW[MAX_PATH];
    WCHAR squashedW[MAX_PATH];
    GUID guid;
    HRESULT hr;
    int size;

    hr = FUNC0(&guid);
    FUNC3(hr == S_OK, "Expected S_OK, got %d\n", hr);

    size = FUNC1(&guid, guidW, MAX_PATH);
    FUNC3(size == 39, "Expected 39, got %d\n", hr);

    FUNC2(CP_ACP, 0, guidW, size, prodcode, MAX_PATH, NULL, NULL);
    if (squashed)
    {
        FUNC4(guidW, squashedW);
        FUNC2(CP_ACP, 0, squashedW, -1, squashed, MAX_PATH, NULL, NULL);
    }
}