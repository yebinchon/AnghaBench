#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cols_cnt; char** cols; char** lines; int lines_cnt; } ;
typedef  TYPE_1__ vdev_cmd_data_t ;

/* Variables and functions */
 char** FUNC0 (char**,int) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 void* FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(vdev_cmd_data_t *data, char *line)
{
	char *col = NULL;
	char *val = line;
	char *equals;
	char **tmp;

	if (line == NULL)
		return (1);

	equals = FUNC1(line, '=');
	if (equals != NULL) {
		/*
		 * We have a 'column=value' type line.  Split it into the
		 * column and value strings by turning the '=' into a '\0'.
		 */
		*equals = '\0';
		col = line;
		val = equals + 1;
	} else {
		val = line;
	}

	/* Do we already have a column by this name?  If so, skip it. */
	if (col != NULL) {
		for (int i = 0; i < data->cols_cnt; i++) {
			if (FUNC2(col, data->cols[i]) == 0)
				return (0); /* Duplicate, skip */
		}
	}

	if (val != NULL) {
		tmp = FUNC0(data->lines,
		    (data->lines_cnt + 1) * sizeof (*data->lines));
		if (tmp == NULL)
			return (1);

		data->lines = tmp;
		data->lines[data->lines_cnt] = FUNC3(val);
		data->lines_cnt++;
	}

	if (col != NULL) {
		tmp = FUNC0(data->cols,
		    (data->cols_cnt + 1) * sizeof (*data->cols));
		if (tmp == NULL)
			return (1);

		data->cols = tmp;
		data->cols[data->cols_cnt] = FUNC3(col);
		data->cols_cnt++;
	}

	if (val != NULL && col == NULL)
		return (1);

	return (0);
}