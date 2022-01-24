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
struct swaynag_type {int dummy; } ;
struct swaynag {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct swaynag_type*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int FUNC11 (int,char**,struct swaynag*,int /*<<< orphan*/ *,struct swaynag_type*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct swaynag_type* FUNC12 (int /*<<< orphan*/ *,char*) ; 
 struct swaynag_type* FUNC13 (char*) ; 

int FUNC14(char *path, struct swaynag *swaynag, list_t *types) {
	FILE *config = FUNC2(path, "r");
	if (!config) {
		FUNC3(stderr, "Failed to read config. Running without it.\n");
		return 0;
	}

	struct swaynag_type *type = FUNC13("<config>");
	FUNC6(types, type);

	char *line = NULL;
	size_t line_size = 0;
	ssize_t nread;
	int line_number = 0;
	int result = 0;
	while ((nread = FUNC5(&line, &line_size, config)) != -1) {
		line_number++;
		if (!*line || line[0] == '\n' || line[0] == '#') {
			continue;
		}

		if (line[nread - 1] == '\n') {
			line[nread - 1] = '\0';
		}

		if (line[0] == '[') {
			char *close = FUNC9(line, ']');
			if (!close) {
				FUNC3(stderr, "Closing bracket not found on line %d\n",
						line_number);
				result = 1;
				break;
			}
			char *name = FUNC0(1, close - line);
			FUNC10(name, line + 1, close - line - 1);
			type = FUNC12(types, name);
			if (!type) {
				type = FUNC13(name);
				FUNC6(types, type);
			}
			FUNC4(name);
		} else {
			char *flag = FUNC7(sizeof(char) * (nread + 3));
			FUNC8(flag, "--%s", line);
			char *argv[] = {"swaynag", flag};
			result = FUNC11(2, argv, swaynag, types, type,
					NULL, NULL);
			FUNC4(flag);
			if (result != 0) {
				break;
			}
		}
	}
	FUNC4(line);
	FUNC1(config);
	return result;
}