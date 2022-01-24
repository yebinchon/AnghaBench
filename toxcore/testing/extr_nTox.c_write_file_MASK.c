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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  Tox ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int) ; 

void FUNC6(Tox *tox, uint32_t friendnumber, uint32_t filenumber, uint64_t position, const uint8_t *data,
                size_t length, void *user_data)
{
    if (length == 0) {
        char msg[512];
        FUNC5(msg, "[t] %u file transfer: %u completed", friendnumber, filenumber);
        FUNC4(msg);
        return;
    }

    char filename[256];
    FUNC5(filename, "%u.%u.bin", friendnumber, filenumber);
    FILE *pFile = FUNC1(filename, "r+b");

    if (pFile == NULL)
        pFile = FUNC1(filename, "wb");

    FUNC2(pFile, position, SEEK_SET);

    if (FUNC3(data, length, 1, pFile) != 1)
        FUNC4("Error writing to file");

    FUNC0(pFile);
}