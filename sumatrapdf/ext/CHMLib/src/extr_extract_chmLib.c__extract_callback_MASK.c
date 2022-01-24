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
struct extract_context {char* base_path; } ;
struct chmUnitInfo {char* path; scalar_t__ length; } ;
struct chmFile {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;
typedef  size_t LONGUINT64 ;
typedef  scalar_t__ LONGINT64 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CHM_ENUMERATOR_CONTINUE ; 
 int CHM_ENUMERATOR_FAILURE ; 
 scalar_t__ FUNC0 (struct chmFile*,struct chmUnitInfo*,unsigned char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 size_t FUNC9 (char*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 

int FUNC12(struct chmFile *h,
              struct chmUnitInfo *ui,
              void *context)
{
    LONGUINT64 ui_path_len;
    char buffer[32768];
    struct extract_context *ctx = (struct extract_context *)context;
    char *i;

    if (ui->path[0] != '/')
        return CHM_ENUMERATOR_CONTINUE;

    /* quick hack for security hole mentioned by Sven Tantau */
    if (FUNC11(ui->path, "/../") != NULL)
    {
        /* fprintf(stderr, "Not extracting %s (dangerous path)\n", ui->path); */
        return CHM_ENUMERATOR_CONTINUE;
    }

    if (FUNC7(buffer, sizeof(buffer), "%s%s", ctx->base_path, ui->path) > 1024)
        return CHM_ENUMERATOR_FAILURE;

    /* Get the length of the path */
    ui_path_len = FUNC9(ui->path)-1;

    /* Distinguish between files and dirs */
    if (ui->path[ui_path_len] != '/' )
    {
        FILE *fout;
        LONGINT64 len, remain=ui->length;
        LONGUINT64 offset = 0;

        FUNC5("--> %s\n", ui->path);
        if ((fout = FUNC2(buffer, "wb")) == NULL)
	{
	    /* make sure that it isn't just a missing directory before we abort */ 
	    char newbuf[32768];
	    FUNC8(newbuf, buffer);
	    i = FUNC10(newbuf, '/');
	    *i = '\0';
	    FUNC6(newbuf);
	    if ((fout = FUNC2(buffer, "wb")) == NULL)
              return CHM_ENUMERATOR_FAILURE;
	}

        while (remain != 0)
        {
            len = FUNC0(h, ui, (unsigned char *)buffer, offset, 32768);
            if (len > 0)
            {
                FUNC4(buffer, 1, (size_t)len, fout);
                offset += len;
                remain -= len;
            }
            else
            {
                FUNC3(stderr, "incomplete file: %s\n", ui->path);
                break;
            }
        }

        FUNC1(fout);
    }
    else
    {
        if (FUNC6(buffer) == -1)
            return CHM_ENUMERATOR_FAILURE;
    }

    return CHM_ENUMERATOR_CONTINUE;
}