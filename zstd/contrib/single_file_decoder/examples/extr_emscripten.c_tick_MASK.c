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

/* Variables and functions */
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  GL_UNSIGNED_SHORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,float) ; 
 float rotDeg ; 
 scalar_t__ uRotId ; 

__attribute__((used)) static void FUNC5() {
	FUNC1(1.0f, 0.0f, 1.0f, 1.0f);
	FUNC0(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	if (uRotId >= 0) {
		FUNC4(uRotId, rotDeg);
		rotDeg += 0.1f;
		if (rotDeg >= 360.0f) {
			rotDeg -= 360.0f;
		}
	}

	FUNC2(GL_TRIANGLES, 6, GL_UNSIGNED_SHORT, 0);
	FUNC3();
}