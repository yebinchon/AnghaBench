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

/* Variables and functions */
 int TEMP_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,...) ; 

__attribute__((used)) static void
FUNC4(char *font, char *buf)
{
    char    buf2[TEMP_BUF_SIZE];
    char    buf3[TEMP_BUF_SIZE];

    FUNC0(font, 3, buf3);
    FUNC0(font, 5, buf2);

    if (!FUNC1(buf2, "normal") && !FUNC1(buf2, "Normal")
						   && !FUNC1(buf2, "NORMAL"))
	FUNC3(buf, TEMP_BUF_SIZE, "%s %s", buf3, buf2);
    else
	FUNC2(buf, buf3);

    FUNC0(font, 6, buf2);

    if (buf2[0] != '\0')
	FUNC3(buf3, TEMP_BUF_SIZE, "%s %s", buf, buf2);
    else
	FUNC2(buf3, buf);

    FUNC0(font, 4, buf2);

    if (!FUNC1(buf2, "o") || !FUNC1(buf2, "O"))
	FUNC3(buf, TEMP_BUF_SIZE, "%s oblique", buf3);
    else if (!FUNC1(buf2, "i") || !FUNC1(buf2, "I"))
	FUNC3(buf, TEMP_BUF_SIZE, "%s italic", buf3);

    if (!FUNC1(buf, " "))
	FUNC2(buf, "-");
}