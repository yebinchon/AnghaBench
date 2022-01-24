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
typedef  int /*<<< orphan*/  uint_fast32_t ;
struct vlc_http_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vlc_http_msg*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_http_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_http_msg*,int /*<<< orphan*/ ,int) ; 
 struct vlc_http_msg* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(uint_fast32_t id, bool nodata)
{
    struct vlc_http_msg *m = FUNC5(200);
    FUNC0(m != NULL);
    FUNC2(m, "VLC-h2-tester");

    FUNC1(FUNC4(m, id, nodata));
    FUNC3(m);
}