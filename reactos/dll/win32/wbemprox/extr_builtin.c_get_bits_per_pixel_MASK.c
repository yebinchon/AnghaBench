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
typedef  int UINT32 ;
typedef  void* UINT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  BITSPIXEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HORZRES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERTRES ; 

__attribute__((used)) static UINT32 FUNC3( UINT *hres, UINT *vres )
{
    HDC hdc = FUNC0( NULL );
    UINT32 ret;

    if (!hdc) return 32;
    ret = FUNC1( hdc, BITSPIXEL );
    *hres = FUNC1( hdc, HORZRES );
    *vres = FUNC1( hdc, VERTRES );
    FUNC2( NULL, hdc );
    return ret;
}