#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct zip_entry {int namelen; int flags; } ;
struct TYPE_9__ {char* name; scalar_t__ offset; } ;
struct TYPE_8__ {scalar_t__ end_offset; } ;
struct TYPE_10__ {TYPE_2__ entry; TYPE_1__ dir; } ;
typedef  TYPE_3__ ar_archive_zip ;
struct TYPE_11__ {int /*<<< orphan*/  stream; scalar_t__ entry_offset; } ;
typedef  TYPE_4__ ar_archive ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ ZIP_DIR_ENTRY_FIXED_SIZE ; 
 scalar_t__ ZIP_LOCAL_ENTRY_FIXED_SIZE ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,struct zip_entry*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct zip_entry*) ; 

const char *FUNC8(ar_archive *ar)
{
    ar_archive_zip *zip = (ar_archive_zip *)ar;
    if (!zip->entry.name) {
        struct zip_entry entry;
        char *name;

        if (zip->dir.end_offset >= 0) {
            if (!FUNC2(ar->stream, ar->entry_offset, SEEK_SET))
                return NULL;
            if (!FUNC6(zip, &entry))
                return NULL;
            if (!FUNC2(ar->stream, ar->entry_offset + ZIP_DIR_ENTRY_FIXED_SIZE, SEEK_SET))
                return NULL;
        }
        else {
            if (!FUNC2(ar->stream, zip->entry.offset, SEEK_SET))
                return NULL;
            if (!FUNC7(zip, &entry))
                return NULL;
            if (!FUNC2(ar->stream, ar->entry_offset + ZIP_LOCAL_ENTRY_FIXED_SIZE, SEEK_SET))
                return NULL;
        }

        name = FUNC4(entry.namelen + 1);
        if (!name || FUNC1(ar->stream, name, entry.namelen) != entry.namelen) {
            FUNC3(name);
            return NULL;
        }
        name[entry.namelen] = '\0';

        if ((entry.flags & (1 << 11))) {
            zip->entry.name = name;
        }
        else {
            zip->entry.name = FUNC0(name);
            FUNC3(name);
        }
        /* normalize path separators */
        if (zip->entry.name) {
            char *p = zip->entry.name;
            while ((p = FUNC5(p, '\\')) != NULL) {
                *p = '/';
            }
        }
    }
    return zip->entry.name;
}