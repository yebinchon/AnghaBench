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
typedef  int /*<<< orphan*/  synctex_io_mode_t ;
typedef  scalar_t__ synctex_bool_t ;
typedef  int /*<<< orphan*/  gzFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 (char const*,char**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (size_t) ; 
 char* FUNC5 (char*,char const*) ; 
 char* FUNC6 (char*,char const*) ; 
 int FUNC7 (char const*) ; 

int FUNC8(const char * output, const char * build_directory, char ** synctex_name_ref, gzFile * file_ref, synctex_bool_t add_quotes, synctex_io_mode_t * io_mode_ref) {
#	define synctex_name (*synctex_name_ref)
#	define the_file (*file_ref)
	int result = FUNC1(output,synctex_name_ref,file_ref,add_quotes,io_mode_ref);
	if ((result || !*file_ref) && build_directory && FUNC7(build_directory)) {
		char * build_output;
		const char *lpc;
		size_t size;
		synctex_bool_t is_absolute;
		build_output = NULL;
		lpc = FUNC2(output);
		size = FUNC7(build_directory)+FUNC7(lpc)+2;   /*  One for the '/' and one for the '\0'.   */
		is_absolute = FUNC3(build_directory);
		if (!is_absolute) {
			size += FUNC7(output);
		}
		if ((build_output = (char *)FUNC4(size))) {
			if (is_absolute) {
				build_output[0] = '\0';
			} else {
				if (build_output != FUNC6(build_output,output)) {
					return -4;
				}
				build_output[lpc-output]='\0';
			}
			if (build_output == FUNC5(build_output,build_directory)) {
				/*	Append a path separator if necessary. */
				if (!FUNC0(build_output[FUNC7(build_directory)-1])) {
					if (build_output != FUNC5(build_output,"/")) {
						return -2;
					}
				}
				/*	Append the last path component of the output. */
				if (build_output != FUNC5(build_output,lpc)) {
					return -3;
				}
				return FUNC1(build_output,synctex_name_ref,file_ref,add_quotes,io_mode_ref);
			}
		}
		return -1;
	}
	return result;
#	undef synctex_name
#	undef the_file
}