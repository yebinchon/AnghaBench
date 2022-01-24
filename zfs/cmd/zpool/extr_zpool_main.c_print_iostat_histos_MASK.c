#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat_array {int dummy; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_5__ {int cb_namewidth; scalar_t__ cb_scripted; int /*<<< orphan*/  cb_flags; scalar_t__ cb_literal; } ;
typedef  TYPE_1__ iostat_cbdata_t ;
typedef  enum iostat_type { ____Placeholder_iostat_type } iostat_type ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int,unsigned int) ; 
 struct stat_array* FUNC2 (char const**,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct stat_array*,unsigned int) ; 
 int /*<<< orphan*/ * histo_to_title ; 
 int /*<<< orphan*/ * iostat_bottom_labels ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct stat_array*,unsigned int,TYPE_1__*,unsigned int,unsigned int,double) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct stat_array*,unsigned int) ; 
 unsigned int FUNC11 (char const**) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 char*** vsx_type_to_nvlist ; 

__attribute__((used)) static void
FUNC13(iostat_cbdata_t *cb, nvlist_t *oldnv,
    nvlist_t *newnv, double scale, const char *name)
{
	unsigned int column_width;
	unsigned int namewidth;
	unsigned int entire_width;
	enum iostat_type type;
	struct stat_array *nva;
	const char **names;
	unsigned int names_len;

	/* What type of histo are we? */
	type = FUNC0(cb->cb_flags);

	/* Get NULL-terminated array of nvlist names for our histo */
	names = vsx_type_to_nvlist[type];
	names_len = FUNC11(names); /* num of names */

	nva = FUNC2(names, names_len, oldnv, newnv);

	if (cb->cb_literal) {
		column_width = FUNC1(5,
		    (unsigned int) FUNC5(FUNC10(nva, names_len)) + 1);
	} else {
		column_width = 5;
	}

	namewidth = FUNC1(cb->cb_namewidth,
	    FUNC12(histo_to_title[FUNC0(cb->cb_flags)]));

	/*
	 * Calculate the entire line width of what we're printing.  The
	 * +2 is for the two spaces between columns:
	 */
	/*	 read  write				*/
	/*	-----  -----				*/
	/*	|___|  <---------- column_width		*/
	/*						*/
	/*	|__________|  <--- entire_width		*/
	/*						*/
	entire_width = namewidth + (column_width + 2) *
	    FUNC4(iostat_bottom_labels[type]);

	if (cb->cb_scripted)
		FUNC9("%s\n", name);
	else
		FUNC6(cb, column_width, name);

	FUNC7(nva, names_len, cb, column_width,
	    namewidth, scale);

	FUNC3(nva, names_len);
	if (!cb->cb_scripted)
		FUNC8(entire_width);
}