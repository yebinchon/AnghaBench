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
struct chmFile {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* CONTENT_500 ; 
 int /*<<< orphan*/  INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct chmFile*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(int fd, struct chmFile *file)
{
    char buffer[4096];
    char buffer2[4096];
    char *end;
    FILE *fout = FUNC3(fd, "w+b");
    if (fout == NULL)
    {
        FUNC6("chm_http: failed to fdopen client stream");
        FUNC10(fd, INTERNAL_ERROR, FUNC7(INTERNAL_ERROR));
        FUNC0(fd);
        return;
    }

    FUNC4(buffer, 4096, fout);
    while (1)
    {
        if (FUNC4(buffer2, 4096, fout) == NULL)
            break;
        if (buffer2[0] == '\r' || buffer2[0] == '\n'  ||  buffer2[0] == '\0')
            break;
    }
    end = FUNC9(buffer, ' ');
    if (FUNC8(end+1, "HTTP", 4) == 0)
        *end = '\0';
    if (FUNC8(buffer, "GET ", 4) == 0)
        FUNC1(fout, buffer+4, file);
    else
    {
        FUNC5(fout, CONTENT_500);
        FUNC2(fout);
        return;
    }
}