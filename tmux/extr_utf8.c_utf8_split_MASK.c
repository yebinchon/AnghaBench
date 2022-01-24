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
struct utf8_data {int size; int /*<<< orphan*/  width; int /*<<< orphan*/  data; } ;
typedef  enum utf8_state { ____Placeholder_utf8_state } utf8_state ;

/* Variables and functions */
 int MB_LEN_MAX ; 
 int UTF8_DONE ; 
 int UTF8_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 

enum utf8_state
FUNC4(wchar_t wc, struct utf8_data *ud)
{
	char	s[MB_LEN_MAX];
	int	slen;

#ifdef HAVE_UTF8PROC
	slen = utf8proc_wctomb(s, wc);
#else
	slen = FUNC3(s, wc);
#endif
	if (slen <= 0 || slen > (int)sizeof ud->data)
		return (UTF8_ERROR);

	FUNC0(ud->data, s, slen);
	ud->size = slen;

	ud->width = FUNC1(wc);
	return (UTF8_DONE);
}