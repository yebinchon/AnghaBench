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
typedef  int /*<<< orphan*/  opj_mj2_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 

int FUNC2(FILE* file, FILE *xmlout, opj_mj2_t * movie,
                     unsigned int sampleframe, char* stringDTD, opj_event_mgr_t *event_mgr)
{

    if (stringDTD != NULL) {
        FUNC0(xmlout, "<?xml version=\"1.0\" standalone=\"no\"?>\n");
        /* stringDTD is known to start with "SYSTEM " or "PUBLIC " */
        /* typical: SYSTEM mj2_to_metadata.dtd */
        stringDTD[6] =
            '\0'; /* Break into two strings at space, so quotes can be inserted. */
        FUNC0(xmlout, "<!DOCTYPE MJ2_File %s \"%s\">\n", stringDTD, stringDTD + 7);
        stringDTD[6] = ' '; /* restore for sake of debugger or memory allocator */
    } else {
        FUNC0(xmlout, "<?xml version=\"1.0\" standalone=\"yes\"?>\n");
    }

    FUNC0(xmlout, "<MJ2_File>\n");
    FUNC1(file, xmlout, movie, sampleframe, event_mgr);
    FUNC0(xmlout, "</MJ2_File>");
    return 0;
}