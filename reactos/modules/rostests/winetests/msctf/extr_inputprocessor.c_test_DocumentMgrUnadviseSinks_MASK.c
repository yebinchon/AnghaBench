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
typedef  int /*<<< orphan*/  ITfSource ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  IID_ITfSource ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  dmSinkCookie ; 
 int /*<<< orphan*/  g_dm ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    ITfSource *source = NULL;
    HRESULT hr;

    hr = FUNC0(g_dm, &IID_ITfSource, (void**)&source);
    FUNC3(hr == S_OK,"Failed to get IID_ITfSource for DocumentMgr\n");

    hr = FUNC2(source, dmSinkCookie);
    FUNC3(hr == S_OK,"Failed to unadvise Sink\n");
    FUNC1(source);
}