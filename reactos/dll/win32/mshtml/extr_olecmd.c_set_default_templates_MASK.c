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
typedef  int /*<<< orphan*/  nsIPrintSettings ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PRUnichar ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IDS_PRINT_FOOTER_TEMPLATE ; 
 int /*<<< orphan*/  IDS_PRINT_HEADER_TEMPLATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(nsIPrintSettings *settings)
{
    WCHAR buf[64];

    static const PRUnichar empty[] = {0};

    FUNC6(settings, empty);
    FUNC7(settings, empty);
    FUNC5(settings, empty);
    FUNC3(settings, empty);
    FUNC4(settings, empty);
    FUNC2(settings, empty);

    if(FUNC0(FUNC1(), IDS_PRINT_HEADER_TEMPLATE, buf,
                   sizeof(buf)/sizeof(WCHAR)))
        FUNC8(settings, buf, TRUE);


    if(FUNC0(FUNC1(), IDS_PRINT_FOOTER_TEMPLATE, buf,
                   sizeof(buf)/sizeof(WCHAR)))
        FUNC8(settings, buf, FALSE);

}