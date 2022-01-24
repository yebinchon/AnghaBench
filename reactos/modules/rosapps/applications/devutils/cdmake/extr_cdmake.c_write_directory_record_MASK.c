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
struct TYPE_7__ {scalar_t__ offset; } ;
struct TYPE_5__ {int year; char month; char day; char hour; char minute; char second; } ;
struct TYPE_6__ {char* joliet_name; char* name_on_cd; char* extension_on_cd; char flags; TYPE_1__ date_and_time; int /*<<< orphan*/  size; int /*<<< orphan*/  sector; int /*<<< orphan*/  joliet_size; int /*<<< orphan*/  joliet_sector; } ;
typedef  TYPE_2__* PDIR_RECORD ;
typedef  int DIR_RECORD_TYPE ;
typedef  char BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
#define  DOT_DOT_RECORD 131 
#define  DOT_RECORD 130 
#define  FILE_RECORD 129 
 scalar_t__ SECTOR_SIZE ; 
#define  SUBDIRECTORY_RECORD 128 
 TYPE_4__ cd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(PDIR_RECORD d,
                       DIR_RECORD_TYPE DirType,
                       BOOL joliet)
{
    unsigned identifier_size;
    unsigned record_size;

    if (joliet)
    {
        if (DirType == DOT_RECORD || DirType == DOT_DOT_RECORD)
            identifier_size = 1;
        else
            identifier_size = FUNC1(d->joliet_name) * 2;
    }
    else
    {
        switch (DirType)
        {
            case DOT_RECORD:
            case DOT_DOT_RECORD:
                identifier_size = 1;
                break;
            case SUBDIRECTORY_RECORD:
                /*printf("Subdir: %s\n", d->name_on_cd);*/
                identifier_size = FUNC1(d->name_on_cd);
                break;
            case FILE_RECORD:
                /*printf("File: %s.%s -> %s.%s\n", d->name, d->extension, d->name_on_cd, d->extension_on_cd);*/
                identifier_size = FUNC1(d->name_on_cd) + 2;
                if (d->extension_on_cd[0] != 0)
                    identifier_size += 1 + FUNC1(d->extension_on_cd);
                break;
            default:
                identifier_size = 1;
                break;
        }
    }
    record_size = 33 + identifier_size;
    if ((identifier_size & 1) == 0)
        record_size++;
    if (cd.offset + record_size > SECTOR_SIZE)
        FUNC0();
    FUNC4((BYTE)record_size);
    FUNC4(0); // number of sectors in extended attribute record
    if (joliet)
    {
        FUNC2(d->joliet_sector);
        FUNC2(d->joliet_size);
    }
    else
    {
        FUNC2(d->sector);
        FUNC2(d->size);
    }
    FUNC4((BYTE)(d->date_and_time.year - 1900));
    FUNC4(d->date_and_time.month);
    FUNC4(d->date_and_time.day);
    FUNC4(d->date_and_time.hour);
    FUNC4(d->date_and_time.minute);
    FUNC4(d->date_and_time.second);
    FUNC4(0);    // GMT offset
    FUNC4(d->flags);
    FUNC4(0);    // file unit size for an interleaved file
    FUNC4(0);    // interleave gap size for an interleaved file
    FUNC3(1); // volume sequence number
    FUNC4((BYTE)identifier_size);
    switch (DirType)
    {
        case DOT_RECORD:
            FUNC4(0);
            break;
        case DOT_DOT_RECORD:
            FUNC4(1);
            break;
        case SUBDIRECTORY_RECORD:
            if (joliet)
                FUNC6(d->joliet_name);
            else
                FUNC5(d->name_on_cd);
            break;
        case FILE_RECORD:
            if (joliet)
            {
                FUNC6(d->joliet_name);
            }
            else
            {
                FUNC5(d->name_on_cd);
                if (d->extension_on_cd[0] != 0)
                {
                    FUNC4('.');
                    FUNC5(d->extension_on_cd);
                }
                FUNC5(";1");
            }
            break;
    }
    if ((identifier_size & 1) == 0)
        FUNC4(0);
}