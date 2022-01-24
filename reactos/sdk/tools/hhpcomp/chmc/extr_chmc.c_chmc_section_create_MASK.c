#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct chmcSection {char* name; char* filename; scalar_t__ fd; scalar_t__ mark_count; int /*<<< orphan*/  mark_list; int /*<<< orphan*/  control_data; int /*<<< orphan*/  reset_table_header; int /*<<< orphan*/  len; scalar_t__ offset; } ;
struct chmcFile {TYPE_1__* config; } ;
struct TYPE_2__ {char* tmpdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 struct chmcSection* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct chmcSection*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 scalar_t__ FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (char const*) ; 

struct chmcSection *FUNC15(struct chmcFile *chm,
                                        const char *name)
{
	struct chmcSection *section;

	FUNC1(name);

	section = FUNC2(1, sizeof(struct chmcSection));
	if (section) {
		const char *tmpdir;
		int len;

		len = FUNC14(name);
		FUNC9(section->name, name, len + 1);
		section->offset = 0;
		section->len = 0;

		tmpdir = NULL;
		if (chm->config != NULL)
			tmpdir = chm->config->tmpdir;
		if (tmpdir == NULL)
			tmpdir = "/tmp/";

		len = FUNC14(tmpdir);
		if (len >= PATH_MAX - 12) {
			FUNC6(errno, FUNC13(errno));
			FUNC5("tmpdir too long: '%s'", tmpdir);
			goto fail;
		}

		FUNC11(section->filename, tmpdir);
		if (section->filename[len - 1] != '/')
			FUNC11(section->filename, "/");

		if (FUNC12("MSCompressed", name) == 0)
			FUNC11(section->filename, "chmcCXXXXXX");
		else
			FUNC11(section->filename, "chmcUXXXXXX");

		section->fd = FUNC10(section->filename, 0);
		FUNC7(stderr, "temp file: %s\n", section->filename);
		if (section->fd < 0) {
			FUNC6(errno, FUNC13(errno));
			FUNC5("creat() file '%s'", section->filename);
			goto fail;
		}
		else if (FUNC12(section->name, "MSCompressed") == 0) {
			FUNC4(&section->reset_table_header);
			FUNC3(&section->control_data);
			FUNC0(&section->mark_list);
			section->mark_count = 0;
		}
	} else {
		FUNC6(errno, FUNC13(errno));
		FUNC5("section '%s' allocation failed", name);
	}

	return section;

 fail:
	FUNC8(section);
	return NULL;
}