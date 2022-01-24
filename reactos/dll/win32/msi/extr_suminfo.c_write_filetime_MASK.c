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
struct TYPE_3__ {int /*<<< orphan*/  dwHighDateTime; int /*<<< orphan*/  dwLowDateTime; } ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  TYPE_1__ FILETIME ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC1( LPBYTE data, DWORD ofs, const FILETIME *ft )
{
    FUNC0( data, ofs, ft->dwLowDateTime );
    FUNC0( data, ofs + 4, ft->dwHighDateTime );
    return 8;
}