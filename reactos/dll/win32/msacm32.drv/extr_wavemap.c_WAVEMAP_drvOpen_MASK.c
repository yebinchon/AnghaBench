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
struct WINE_WAVEMAP {int dummy; } ;
typedef  int LRESULT ;
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct WINE_WAVEMAP* oss ; 

__attribute__((used)) static LRESULT FUNC1(LPSTR str)
{
    FUNC0("(%p)\n", str);

    if (oss)
	return 0;

    /* I know, this is ugly, but who cares... */
    oss = (struct WINE_WAVEMAP*)1;
    return 1;
}