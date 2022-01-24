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
typedef  int /*<<< orphan*/  STGMEDIUM ;
typedef  int CLIPFORMAT ;

/* Variables and functions */
#define  CF_DIB 130 
#define  CF_ENHMETAFILE 129 
#define  CF_METAFILEPICT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(CLIPFORMAT cfFormat, STGMEDIUM *stgmedium)
{
    switch (cfFormat)
    {
    case CF_DIB:
        FUNC0(stgmedium);
        break;
    case CF_METAFILEPICT:
        FUNC2(stgmedium);
        break;
    case CF_ENHMETAFILE:
        FUNC1(stgmedium);
        break;
    default:
        FUNC3(0, "cf %x not implemented\n", cfFormat);
    }
}