#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; scalar_t__ is_ustar; } ;
struct TYPE_6__ {TYPE_1__ entry; } ;
typedef  TYPE_2__ ar_archive_tar ;
struct TYPE_7__ {int /*<<< orphan*/  stream; scalar_t__ entry_offset; } ;
typedef  TYPE_3__ ar_archive ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int TAR_BLOCK_SIZE ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 char* FUNC8 (char*,char) ; 

const char *FUNC9(ar_archive *ar)
{
    ar_archive_tar *tar = (ar_archive_tar *)ar;
    if (!tar->entry.name) {
        char *name;

        if (!FUNC3(ar->stream, ar->entry_offset, SEEK_SET))
            return NULL;

        name = FUNC6(100 + 1);
        if (!name || FUNC2(ar->stream, name, 100) != 100) {
            FUNC5(name);
            FUNC3(ar->stream, ar->entry_offset + TAR_BLOCK_SIZE, SEEK_SET);
            return NULL;
        }
        name[100] = '\0';

        if (tar->entry.is_ustar) {
            char *prefixed = FUNC6(256 + 1);
            if (!prefixed || !FUNC4(ar->stream, 245) || FUNC2(ar->stream, prefixed, 167) != 167) {
                FUNC5(name);
                FUNC5(prefixed);
                FUNC3(ar->stream, ar->entry_offset + TAR_BLOCK_SIZE, SEEK_SET);
                return NULL;
            }
            if (prefixed[0] != '\0') {
                prefixed[156] = '\0';
                FUNC7(prefixed, "/");
                FUNC7(prefixed, name);
                FUNC5(name);
                name = prefixed;
                prefixed = NULL;
            }
            FUNC5(prefixed);
        }
        else
            FUNC4(ar->stream, TAR_BLOCK_SIZE - 100);

        /* name could be in any encoding, assume UTF-8 or whatever (DOS) */
        if (FUNC1(name)) {
            tar->entry.name = name;
        }
        else {
            tar->entry.name = FUNC0(name);
            FUNC5(name);
        }
        /* normalize path separators */
        if (tar->entry.name) {
            char *p = tar->entry.name;
            while ((p = FUNC8(p, '\\')) != NULL) {
                *p = '/';
            }
        }
    }
    return tar->entry.name;
}