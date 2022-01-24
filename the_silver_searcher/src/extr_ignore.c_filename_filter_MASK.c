#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; size_t d_namlen; } ;
struct TYPE_5__ {char* path_start; TYPE_2__* ig; } ;
typedef  TYPE_1__ scandir_baton_t ;
struct TYPE_6__ {struct TYPE_6__* parent; int /*<<< orphan*/ * extensions; int /*<<< orphan*/  extensions_len; } ;
typedef  TYPE_2__ ignores ;
struct TYPE_7__ {int /*<<< orphan*/  path_to_ignore; scalar_t__ search_all_files; int /*<<< orphan*/  follow_symlinks; int /*<<< orphan*/  search_hidden_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** evil_hardcoded_ignore_files ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,struct dirent const*) ; 
 scalar_t__ FUNC4 (char const*,struct dirent const*) ; 
 scalar_t__ FUNC5 (char const*,struct dirent const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 TYPE_4__ opts ; 
 int FUNC7 (TYPE_2__ const*,char const*,char const*) ; 
 char* FUNC8 (char const*,char) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 size_t FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 

int FUNC12(const char *path, const struct dirent *dir, void *baton) {
    const char *filename = dir->d_name;
    if (!opts.search_hidden_files && filename[0] == '.') {
        return 0;
    }

    size_t i;
    for (i = 0; evil_hardcoded_ignore_files[i] != NULL; i++) {
        if (FUNC9(filename, evil_hardcoded_ignore_files[i]) == 0) {
            return 0;
        }
    }

    if (!opts.follow_symlinks && FUNC5(path, dir)) {
        FUNC6("File %s ignored becaused it's a symlink", dir->d_name);
        return 0;
    }

    if (FUNC4(path, dir)) {
        FUNC6("%s ignored because it's a named pipe or socket", path);
        return 0;
    }

    if (opts.search_all_files && !opts.path_to_ignore) {
        return 1;
    }

    scandir_baton_t *scandir_baton = (scandir_baton_t *)baton;
    const char *path_start = scandir_baton->path_start;

    const char *extension = FUNC8(filename, '.');
    if (extension) {
        if (extension[1]) {
            // The dot is not the last character, extension starts at the next one
            ++extension;
        } else {
            // No extension
            extension = NULL;
        }
    }

#ifdef HAVE_DIRENT_DNAMLEN
    size_t filename_len = dir->d_namlen;
#else
    size_t filename_len = 0;
#endif

    if (FUNC11(filename, "./", 2) == 0) {
#ifndef HAVE_DIRENT_DNAMLEN
        filename_len = FUNC10(filename);
#endif
        filename++;
        filename_len--;
    }

    const ignores *ig = scandir_baton->ig;

    while (ig != NULL) {
        if (extension) {
            int match_pos = FUNC1(extension, ig->extensions, 0, ig->extensions_len);
            if (match_pos >= 0) {
                FUNC6("file %s ignored because name matches extension %s", filename, ig->extensions[match_pos]);
                return 0;
            }
        }

        if (FUNC7(ig, path_start, filename)) {
            return 0;
        }

        if (FUNC3(path, dir)) {
#ifndef HAVE_DIRENT_DNAMLEN
            if (!filename_len) {
                filename_len = FUNC10(filename);
            }
#endif
            if (filename[filename_len - 1] != '/') {
                char *temp;
                FUNC0(&temp, "%s/", filename);
                int rv = FUNC7(ig, path_start, temp);
                FUNC2(temp);
                if (rv) {
                    return 0;
                }
            }
        }
        ig = ig->parent;
    }

    FUNC6("%s not ignored", filename);
    return 1;
}