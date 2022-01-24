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
typedef  int /*<<< orphan*/  u_int ;
struct session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UINT_MAX ; 
 struct session* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 

struct session *
FUNC2(const char *s)
{
	const char	*errstr;
	u_int		 id;

	if (*s != '$')
		return (NULL);

	id = FUNC1(s + 1, 0, UINT_MAX, &errstr);
	if (errstr != NULL)
		return (NULL);
	return (FUNC0(id));
}