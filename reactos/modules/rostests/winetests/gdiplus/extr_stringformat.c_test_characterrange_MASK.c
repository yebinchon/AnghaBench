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
typedef  int INT ;
typedef  int /*<<< orphan*/  GpStringFormat ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  CharacterRange ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int InvalidParameter ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    CharacterRange ranges[3];
    INT count;
    GpStringFormat* format;
    GpStatus stat;

    stat = FUNC0(0, LANG_NEUTRAL, &format);
    FUNC4(Ok, stat);
    stat = FUNC3(NULL, 3, ranges);
    FUNC4(InvalidParameter, stat);
    stat = FUNC3(format, 0, ranges);
    FUNC4(Ok, stat);
    stat = FUNC3(format, 3, NULL);
    FUNC4(InvalidParameter, stat);

    stat = FUNC3(format, 3, ranges);
    FUNC4(Ok, stat);
    stat = FUNC2(format, &count);
    FUNC4(Ok, stat);
    if (stat == Ok) FUNC4(3, count);

    stat= FUNC1(format);
    FUNC4(Ok, stat);
}