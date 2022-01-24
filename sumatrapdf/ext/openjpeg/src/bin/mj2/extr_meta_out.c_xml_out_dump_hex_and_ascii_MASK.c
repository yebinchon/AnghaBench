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
 int BYTES_PER_DUMP_LINE ; 
 scalar_t__ derived ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ raw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,char*) ; 

void FUNC3(FILE* xmlout, char *data, int data_len,
                                char* s)
{
    /* s is a string of spaces for indent */
    int i, j;

    if (raw) {
        FUNC2(xmlout, data, data_len, s);
    }

    if (derived) {
        FUNC0(xmlout,  "%s<AsHexAndASCII>\n", s);
        for (i = 0; i < data_len;) {
            FUNC0(xmlout, "%s ", s); /* Additional leading space added in loop */
            /* First column: hex */
            for (j = 0; j < BYTES_PER_DUMP_LINE; j++) { /* Dump bytes */
                FUNC0(xmlout, " %02x", data[i + j]);
            }
            /* Space between columns... */ FUNC0(xmlout,  "  ");
            /* Second column: ASCII */
            for (j = 0; j < BYTES_PER_DUMP_LINE; j++, i++) {
                if (FUNC1((int)data[i]) && i < data_len) {
                    FUNC0(xmlout, "%c", data[i]);
                } else {
                    FUNC0(xmlout, " ");
                }
            }
            /* If we also wanted to output UCS-2 Unicode as a third column, then entire document
            must use fwprintf.  Forget about it for now.  As it stands, if data is UCS-2 format but still
            the ASCII set, then we'll be able to read every other byte as ASCII in column 2.  If
            data is UTF-8 format but still ASCII, then we'll be able to read every byte as ASCII
            in column 2. */
        }
        FUNC0(xmlout,  "%s</AsHexAndASCII>\n", s);
    }
}