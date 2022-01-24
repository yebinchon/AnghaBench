#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
struct TYPE_5__ {char* curdir; int selected; size_t count; TYPE_1__* files; scalar_t__ (* filter ) (char*) ;int /*<<< orphan*/  input_dir; } ;
struct TYPE_4__ {int is_dir; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FILENAME_MAX ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmp_entry ; 
 int /*<<< orphan*/  ctx ; 
 TYPE_3__ fc ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,size_t,int,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC12(const char *path)
{
	char buf[PATH_MAX];
	DIR *dir;
	struct dirent *dp;

	FUNC8(path, fc.curdir);
	if (!FUNC1(ctx, fc.curdir))
		return;

	FUNC11(&fc.input_dir, fc.curdir);

	fc.selected = -1;
	fc.count = 0;
	dir = FUNC5(fc.curdir);
	if (!dir)
	{
		fc.files[fc.count].is_dir = 1;
		FUNC3(fc.files[fc.count].name, "..", FILENAME_MAX);
		++fc.count;
	}
	else
	{
		while ((dp = FUNC7(dir)) && fc.count < (int)FUNC4(fc.files))
		{
			/* skip hidden files */
			if (dp->d_name[0] == '.' && FUNC9(dp->d_name, ".") && FUNC9(dp->d_name, ".."))
				continue;
			FUNC2(buf, sizeof buf, "%s/%s", fc.curdir, dp->d_name);
			fc.files[fc.count].is_dir = FUNC1(ctx, buf);
			if (fc.files[fc.count].is_dir || !fc.filter || fc.filter(buf))
			{
				FUNC3(fc.files[fc.count].name, dp->d_name, FILENAME_MAX);
				++fc.count;
			}
		}
		FUNC0(dir);
	}

	FUNC6(fc.files, fc.count, sizeof fc.files[0], cmp_entry);
}