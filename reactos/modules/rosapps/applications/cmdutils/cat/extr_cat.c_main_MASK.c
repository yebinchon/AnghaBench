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
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (unsigned char*) ; 
 unsigned int EOF ; 
 int /*<<< orphan*/  O_BINARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC9 (unsigned char**,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char**,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 

int FUNC13(int argc, char* argv[])
{
    int i;
    FILE* in;
    unsigned char buff[512];
    size_t cnt, readcnt;

    if (argc >= 2)
    {
        if (FUNC3(argv[1], "-h"    ) == 0 ||
            FUNC3(argv[1], "--help") == 0 ||
            FUNC3(argv[1], "/?"    ) == 0 ||
            FUNC3(argv[1], "/help" ) == 0)
        {
            FUNC11();
            return 0;
        }
    }

    /* Set STDOUT to binary */
    FUNC2(FUNC1(stdout), O_BINARY);

    /* Special case where we run 'cat' without any argument: we use STDIN */
    if (argc <= 1)
    {
        unsigned int ch;

        /* Set STDIN to binary */
        FUNC2(FUNC1(stdin), O_BINARY);

#if 0 // Version using feof()
        ch = fgetc(stdin);
        while (!feof(stdin))
        {
            putchar(ch);
            ch = fgetc(stdin);
        }
#else
        while ((ch = FUNC6(stdin)) != EOF)
        {
            FUNC12(ch);
        }
#endif

        return 0;
    }

    /* We have files: read them and output them to STDOUT */
    for (i = 1; i < argc; i++)
    {
        /* Open the file in binary read mode */
        in = FUNC7(argv[i], "rb");
        if (in == NULL)
        {
            FUNC8(stderr, "Failed to open file '%s'\n", argv[i]);
            return -1;
        }

        /* Dump the file to STDOUT */
        cnt = 0; readcnt = 0;
        while (readcnt == cnt)
        {
            /* Read data from the input file */
            cnt = FUNC0(buff);
            readcnt = FUNC9(&buff, sizeof(buff[0]), cnt, in);
            if (readcnt != cnt)
            {
                /*
                 * The real number of read bytes differs from the number of bytes
                 * we wanted to read, so either a reading error occurred, or EOF
                 * was reached while reading. Bail out if it is a reading error.
                 */
                if (!FUNC5(in))
                {
                    FUNC8(stderr, "Error while reading file '%s'\n", argv[i]);
                    FUNC4(in);
                    return -1;
                }
            }

            /* Nothing to be read anymore, so we can gracefully break */
            if (readcnt == 0) break;

            /* Write data to STDOUT */
            FUNC10(&buff, sizeof(buff[0]), readcnt, stdout);
        }

        /* Finally close the file */
        FUNC4(in);
    }

    return 0;
}