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
struct io {int dummy; } ;
struct buffer {char* data; } ;
typedef  int (* io_read_fn ) (char*,size_t,char*,size_t,void*) ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int SUCCESS ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct io*) ; 
 scalar_t__ FUNC2 (struct io*) ; 
 scalar_t__ FUNC3 (struct io*,struct buffer*,char,size_t*,int,char) ; 
 int /*<<< orphan*/  FUNC4 (struct io*) ; 
 size_t FUNC5 (char*,char const*) ; 
 char* FUNC6 (char*) ; 
 size_t FUNC7 (char*) ; 

__attribute__((used)) static enum status_code
FUNC8(struct io *io, const char *separators,
	     size_t *lineno, io_read_fn read_property, void *data)
{
	struct buffer buf;
	enum status_code state = SUCCESS;

	while (state == SUCCESS && FUNC3(io, &buf, '\n', lineno, true, '\\')) {
		char *name;
		char *value;
		size_t namelen;
		size_t valuelen;

		name = FUNC6(buf.data);
		namelen = FUNC5(name, separators);

		if (name[namelen]) {
			name[namelen] = 0;
			value = FUNC6(name + namelen + 1);
			valuelen = FUNC7(value);

		} else {
			value = "";
			valuelen = 0;
		}

		state = read_property(name, namelen, value, valuelen, data);
	}

	if (state == SUCCESS && FUNC2(io))
		state = FUNC0("%s", FUNC4(io));
	FUNC1(io);

	return state;
}