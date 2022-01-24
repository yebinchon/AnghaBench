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
typedef  int /*<<< orphan*/  EmscriptenWebGLContextAttributes ;
typedef  int /*<<< orphan*/  EM_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EMSCRIPTEN_EVENT_TARGET_DOCUMENT ; 
 int /*<<< orphan*/  EM_FALSE ; 
 int /*<<< orphan*/  EM_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  glCtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static EM_BOOL FUNC5() {
	// Default attributes
	EmscriptenWebGLContextAttributes attr;
	FUNC2(&attr);
	if ((glCtx = FUNC1("#canvas", &attr))) {
		// Bind the context and fire a resize to get the initial size
		FUNC3(glCtx);
		FUNC0(EMSCRIPTEN_EVENT_TARGET_DOCUMENT, NULL, EM_FALSE, resize);
		FUNC4(0, NULL, NULL);
		return EM_TRUE;
	}
	return EM_FALSE;
}