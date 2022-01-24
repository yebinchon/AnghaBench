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
typedef  double REAL ;
typedef  int INT ;
typedef  int /*<<< orphan*/  GpStringFormat ;
typedef  int GpStatus ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,double*,double*) ; 
 int FUNC4 (int /*<<< orphan*/ *,double,int,int /*<<< orphan*/ *) ; 
 int InvalidParameter ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int NotImplemented ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (double,double) ; 
 int /*<<< orphan*/ * tabstops ; 

__attribute__((used)) static void FUNC7(void)
{
    GpStringFormat *format;
    GpStatus stat;
    INT count;
    REAL tabs[3];
    REAL firsttab;

    stat = FUNC0(0, LANG_NEUTRAL, &format);
    FUNC5(Ok, stat);

    /* NULL */
    stat = FUNC2(NULL, NULL);
    FUNC5(InvalidParameter, stat);
    stat = FUNC2(NULL, &count);
    FUNC5(InvalidParameter, stat);
    stat = FUNC2(format, NULL);
    FUNC5(InvalidParameter, stat);

    stat = FUNC4(NULL, 0.0, 0, NULL);
    FUNC5(InvalidParameter, stat);
    stat = FUNC4(format, 0.0, 0, NULL);
    FUNC5(InvalidParameter, stat);
    stat = FUNC4(NULL, 0.0, 0, tabstops);
    FUNC5(InvalidParameter, stat);

    stat = FUNC3(NULL, 0, NULL, NULL);
    FUNC5(InvalidParameter, stat);
    stat = FUNC3(format, 0, NULL, NULL);
    FUNC5(InvalidParameter, stat);
    stat = FUNC3(NULL, 0, &firsttab, NULL);
    FUNC5(InvalidParameter, stat);
    stat = FUNC3(NULL, 0, NULL, tabs);
    FUNC5(InvalidParameter, stat);
    stat = FUNC3(format, 0, &firsttab, NULL);
    FUNC5(InvalidParameter, stat);
    stat = FUNC3(format, 0, NULL, tabs);
    FUNC5(InvalidParameter, stat);

    /* not NULL */
    stat = FUNC2(format, &count);
    FUNC5(Ok, stat);
    FUNC5(0, count);
    /* negative tabcount */
    stat = FUNC4(format, 0.0, -1, tabstops);
    FUNC5(Ok, stat);
    count = -1;
    stat = FUNC2(format, &count);
    FUNC5(Ok, stat);
    FUNC5(0, count);

    stat = FUNC4(format, -10.0, 0, tabstops);
    FUNC5(Ok, stat);
    stat = FUNC4(format, -10.0, 1, tabstops);
    FUNC5(NotImplemented, stat);

    firsttab = -1.0;
    tabs[0] = tabs[1] = tabs[2] = -1.0;
    stat = FUNC3(format, 0, &firsttab, tabs);
    FUNC5(Ok, stat);
    FUNC6(-1.0, tabs[0]);
    FUNC6(-1.0, tabs[1]);
    FUNC6(-1.0, tabs[2]);
    FUNC6(0.0, firsttab);

    stat = FUNC4(format, +0.0, 3, tabstops);
    FUNC5(Ok, stat);
    count = 0;
    stat = FUNC2(format, &count);
    FUNC5(Ok, stat);
    FUNC5(3, count);

    firsttab = -1.0;
    tabs[0] = tabs[1] = tabs[2] = -1.0;
    stat = FUNC3(format, 3, &firsttab, tabs);
    FUNC5(Ok, stat);
    FUNC6(0.0,  tabs[0]);
    FUNC6(10.0, tabs[1]);
    FUNC6(2.0,  tabs[2]);
    FUNC6(0.0,  firsttab);

    stat = FUNC4(format, 10.0, 3, tabstops);
    FUNC5(Ok, stat);
    firsttab = -1.0;
    tabs[0] = tabs[1] = tabs[2] = -1.0;
    stat = FUNC3(format, 0, &firsttab, tabs);
    FUNC5(Ok, stat);
    FUNC6(-1.0, tabs[0]);
    FUNC6(-1.0, tabs[1]);
    FUNC6(-1.0, tabs[2]);
    FUNC6(10.0, firsttab);

    /* zero tabcount, after valid setting to 3 */
    stat = FUNC4(format, 0.0, 0, tabstops);
    FUNC5(Ok, stat);
    count = 0;
    stat = FUNC2(format, &count);
    FUNC5(Ok, stat);
    FUNC5(3, count);

    stat = FUNC1(format);
    FUNC5(Ok, stat);
}