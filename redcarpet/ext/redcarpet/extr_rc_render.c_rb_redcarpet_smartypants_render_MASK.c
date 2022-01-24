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
typedef  int /*<<< orphan*/  uint8_t ;
struct buf {int /*<<< orphan*/  size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_STRING ; 
 struct buf* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buf*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VALUE FUNC8(VALUE self, VALUE text)
{
	VALUE result;
	struct buf *output_buf;

	FUNC0(text, T_STRING);

	output_buf = FUNC3(128);

	FUNC7(output_buf, (const uint8_t*)FUNC2(text), FUNC1(text));
	result = FUNC6((const char*)output_buf->data, output_buf->size, FUNC5(text));

	FUNC4(output_buf);
	return result;
}