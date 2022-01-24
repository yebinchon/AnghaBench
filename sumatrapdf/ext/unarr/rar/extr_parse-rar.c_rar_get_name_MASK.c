#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct rar_header {int flags; } ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_6__ {char* name; scalar_t__ header_size; } ;
struct TYPE_7__ {TYPE_1__ entry; } ;
typedef  TYPE_2__ ar_archive_rar ;
struct TYPE_8__ {scalar_t__ entry_offset; int /*<<< orphan*/  stream; } ;
typedef  TYPE_3__ ar_archive ;

/* Variables and functions */
 int LHD_LARGE ; 
 int LHD_UNICODE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 char* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct rar_header*) ; 
 char* FUNC8 (char*,char) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

const char *FUNC12(ar_archive *ar)
{
    ar_archive_rar *rar = (ar_archive_rar *)ar;
    if (!rar->entry.name) {
        unsigned char data[21];
        uint16_t namelen;
        char *name;

        struct rar_header header;
        if (!FUNC2(ar->stream, ar->entry_offset, SEEK_SET))
            return NULL;
        if (!FUNC7(ar, &header))
            return NULL;
        if (FUNC1(ar->stream, data, sizeof(data)) != sizeof(data))
            return NULL;
        if ((header.flags & LHD_LARGE) && !FUNC3(ar->stream, 8))
            return NULL;

        namelen = FUNC10(data + 15);
        name = FUNC5(namelen + 1);
        if (!name || FUNC1(ar->stream, name, namelen) != namelen) {
            FUNC4(name);
            return NULL;
        }
        name[namelen] = '\0';

        if (!(header.flags & LHD_UNICODE)) {
            rar->entry.name = FUNC0(name);
            FUNC4(name);
        }
        else if (namelen == FUNC9(name)) {
            rar->entry.name = name;
        }
        else {
            rar->entry.name = FUNC6(name, namelen);
            FUNC4(name);
        }
        /* normalize path separators */
        if (rar->entry.name) {
            char *p = rar->entry.name;
            while ((p = FUNC8(p, '\\')) != NULL) {
                *p = '/';
            }
        }

        if (!FUNC2(ar->stream, ar->entry_offset + rar->entry.header_size, SEEK_SET))
            FUNC11("Couldn't seek back to the end of the entry header");
    }
    return rar->entry.name;
}