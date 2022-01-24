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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int u_char ;
struct utf8_data {int have; int size; int width; int* data; } ;
typedef  enum utf8_state { ____Placeholder_utf8_state } utf8_state ;

/* Variables and functions */
 scalar_t__ UTF8_DONE ; 
 int UTF8_ERROR ; 
 int UTF8_MORE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct utf8_data*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

enum utf8_state
FUNC3(struct utf8_data *ud, u_char ch)
{
	wchar_t	wc;
	int	width;

	if (ud->have >= ud->size)
		FUNC0("UTF-8 character overflow");
	if (ud->size > sizeof ud->data)
		FUNC0("UTF-8 character size too large");

	if (ud->have != 0 && (ch & 0xc0) != 0x80)
		ud->width = 0xff;

	ud->data[ud->have++] = ch;
	if (ud->have != ud->size)
		return (UTF8_MORE);

	if (ud->width == 0xff)
		return (UTF8_ERROR);

	if (FUNC1(ud, &wc) != UTF8_DONE)
		return (UTF8_ERROR);
	if ((width = FUNC2(wc)) < 0)
		return (UTF8_ERROR);
	ud->width = width;

	return (UTF8_DONE);
}