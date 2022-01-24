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
typedef  scalar_t__ GLuint ;
typedef  int GLint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  char GLchar ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,char const**,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static GLuint FUNC9(GLenum const type, const GLchar* text) {
	GLuint shader = FUNC2(type);
	if (shader) {
		FUNC6 (shader, 1, &text, NULL);
		FUNC1(shader);
		GLint compiled;
		FUNC5(shader, GL_COMPILE_STATUS, &compiled);
		if (compiled) {
			return shader;
		} else {
			GLint logLen;
			FUNC5(shader, GL_INFO_LOG_LENGTH, &logLen);
			if (logLen > 1) {
				GLchar*  logStr = FUNC7(logLen);
				FUNC4(shader, logLen, NULL, logStr);
			#ifndef NDEBUG
				FUNC8("Shader compilation error: %s\n", logStr);
			#endif
				FUNC0(logStr);
			}
			FUNC3(shader);
		}
	}
	return 0;
}