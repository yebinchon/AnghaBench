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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC1(FILE* xmlout, char *data, int data_len, char* s)
{
    /* s is a string of spaces for indent */
    int i;

    /* This is called when raw is true, or there is no appropriate derived form */
    FUNC0(xmlout,    "%s<AsHex>\n", s);
    FUNC0(xmlout,    "%s  ", s); /* Inadequate for pretty printing */
    for (i = 0; i < data_len; i++) {  /* Dump packet headers */
        FUNC0(xmlout,  "%02x", data[i]);
    }
    FUNC0(xmlout,    "%s</AsHex>\n", s);
}