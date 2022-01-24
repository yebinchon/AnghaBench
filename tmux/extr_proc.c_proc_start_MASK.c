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
struct utsname {char const* sysname; long release; int /*<<< orphan*/  version; } ;
struct tmuxproc {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_VERSION ; 
 int /*<<< orphan*/  VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct utsname*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_path ; 
 scalar_t__ FUNC7 (struct utsname*) ; 
 struct tmuxproc* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

struct tmuxproc *
FUNC10(const char *name)
{
	struct tmuxproc	*tp;
	struct utsname	 u;

	FUNC4(name);
	FUNC6("%s (%s)", name, socket_path);

	if (FUNC7(&u) < 0)
		FUNC5(&u, 0, sizeof u);

	FUNC3("%s started (%ld): version %s, socket %s, protocol %d", name,
	    (long)FUNC2(), VERSION, socket_path, PROTOCOL_VERSION);
	FUNC3("on %s %s %s; libevent %s (%s)", u.sysname, u.release,
	    u.version, FUNC1(), FUNC0());

	tp = FUNC8(1, sizeof *tp);
	tp->name = FUNC9(name);

	return (tp);
}