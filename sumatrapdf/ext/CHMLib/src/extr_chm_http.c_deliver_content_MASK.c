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
struct chmUnitInfo {int length; } ;
struct chmFile {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CHM_RESOLVE_SUCCESS ; 
 char* CONTENT_404 ; 
 scalar_t__ FUNC0 (struct chmFile*,char const*,struct chmUnitInfo*) ; 
 scalar_t__ FUNC1 (struct chmFile*,struct chmUnitInfo*,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct chmFile*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 char* FUNC8 (char const*,char) ; 

__attribute__((used)) static void FUNC9(FILE *fout, const char *filename, struct chmFile *file)
{
    struct chmUnitInfo ui;
    const char *ext;
    unsigned char buffer[65536];
    int swath, offset;

    if (FUNC7(filename,"/") == 0)
    {
        FUNC2(fout,file);
        FUNC3(fout);
        return;
    }
    /* try to find the file */
    if (FUNC0(file, filename, &ui) != CHM_RESOLVE_SUCCESS)
    {
        FUNC4(fout, CONTENT_404);
        FUNC3(fout);
        return;
    }

    /* send the file back */
    ext = FUNC8(filename, '.');
    FUNC4(fout, "HTTP/1.1 200 OK\r\nConnection: close\r\nContent-Length: %d\r\nContent-Type: %s\r\n\r\n",
            (int)ui.length,
            FUNC6(ext));

    /* pump the data out */
    swath = 65536;
    offset = 0;
    while (offset < ui.length)
    {
        if ((ui.length - offset) < 65536)
            swath = ui.length - offset;
        else
            swath = 65536;
        swath = (int)FUNC1(file, &ui, buffer, offset, swath);
        offset += swath;
        FUNC5(buffer, 1, swath, fout);
    }
    FUNC3(fout);
}