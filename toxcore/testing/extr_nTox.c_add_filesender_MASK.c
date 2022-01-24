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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  Tox ;
struct TYPE_2__ {int filenumber; int /*<<< orphan*/  friendnum; int /*<<< orphan*/ * file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TOX_FILE_KIND_DATA ; 
 TYPE_1__* file_senders ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t numfilesenders ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t FUNC5(Tox *m, uint16_t friendnum, char *filename)
{
    FILE *tempfile = FUNC0(filename, "rb");

    if (tempfile == 0)
        return -1;

    FUNC1(tempfile, 0, SEEK_END);
    uint64_t filesize = FUNC2(tempfile);
    FUNC1(tempfile, 0, SEEK_SET);
    uint32_t filenum = FUNC4(m, friendnum, TOX_FILE_KIND_DATA, filesize, 0, (uint8_t *)filename,
                                     FUNC3(filename), 0);

    if (filenum == -1)
        return -1;

    file_senders[numfilesenders].file = tempfile;
    file_senders[numfilesenders].friendnum = friendnum;
    file_senders[numfilesenders].filenumber = filenum;
    ++numfilesenders;
    return filenum;
}