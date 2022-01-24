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
struct chmUnitInfo {int flags; char* path; scalar_t__ length; scalar_t__ start; scalar_t__ space; } ;
struct chmFile {int dummy; } ;

/* Variables and functions */
 int CHM_ENUMERATE_DIRS ; 
 int CHM_ENUMERATE_FILES ; 
 int CHM_ENUMERATE_META ; 
 int CHM_ENUMERATE_NORMAL ; 
 int CHM_ENUMERATE_SPECIAL ; 
 int CHM_ENUMERATOR_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

int FUNC4(struct chmFile *h,
              struct chmUnitInfo *ui,
              void *context)
{
    static char szBuf[128];
	FUNC0(szBuf, 0, 128);
	if(ui->flags & CHM_ENUMERATE_NORMAL)
		FUNC3(szBuf, "normal ");
	else if(ui->flags & CHM_ENUMERATE_SPECIAL)
		FUNC3(szBuf, "special ");
	else if(ui->flags & CHM_ENUMERATE_META)
		FUNC3(szBuf, "meta ");
	
	if(ui->flags & CHM_ENUMERATE_DIRS)
		FUNC2(szBuf, "dir");
	else if(ui->flags & CHM_ENUMERATE_FILES)
		FUNC2(szBuf, "file");

    FUNC1("   %1d %8d %8d   %s\t\t%s\n",
           (int)ui->space,
           (int)ui->start,
           (int)ui->length,
		   szBuf,
           ui->path);
    return CHM_ENUMERATOR_CONTINUE;}