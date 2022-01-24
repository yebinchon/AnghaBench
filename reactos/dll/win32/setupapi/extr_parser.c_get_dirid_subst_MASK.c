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
struct inf_file {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int DIRID_SRCPATH ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  const* FUNC1 (struct inf_file const*,unsigned int*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const WCHAR *FUNC3( const struct inf_file *file, int dirid, unsigned int *len )
{
    const WCHAR *ret;

    if (dirid == DIRID_SRCPATH) return FUNC1( file, len );
    ret = FUNC0( dirid );
    if (ret) *len = FUNC2(ret);
    return ret;
}