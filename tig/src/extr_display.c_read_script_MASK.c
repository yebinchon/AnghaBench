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
struct key {int dummy; } ;
struct buffer {char* data; } ;
typedef  int /*<<< orphan*/  input_buffer ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;

/* Variables and functions */
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const**,struct key*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct buffer*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  script_io ; 
 size_t FUNC6 (char*,char*) ; 

__attribute__((used)) static bool
FUNC7(struct key *key)
{
	static struct buffer input_buffer;
	static const char *line = "";
	enum status_code code;

	while (!line || !*line) {
		if (input_buffer.data && *input_buffer.data == ':') {
			line = "<Enter>";
			FUNC5(&input_buffer, 0, sizeof(input_buffer));

		} else if (!FUNC4(&script_io, &input_buffer, '\n', true)) {
			FUNC3(&script_io);
			return false;
		} else if (input_buffer.data[FUNC6(input_buffer.data, " \t")] == '#') {
			continue;
		} else {
			line = input_buffer.data;
		}
	}

	code = FUNC1(&line, key);
	if (code != SUCCESS)
		FUNC0("Error reading script: %s", FUNC2(code));
	return true;
}