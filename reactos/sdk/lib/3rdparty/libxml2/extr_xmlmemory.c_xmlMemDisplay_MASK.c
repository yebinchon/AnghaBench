#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int mh_type; char* mh_file; int mh_line; scalar_t__ mh_tag; struct TYPE_4__* mh_next; scalar_t__ mh_size; int /*<<< orphan*/  mh_number; } ;
typedef  TYPE_1__ MEMHDR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  MALLOC_ATOMIC_TYPE 132 
#define  MALLOC_TYPE 131 
 scalar_t__ MEMTAG ; 
#define  REALLOC_ATOMIC_TYPE 130 
#define  REALLOC_TYPE 129 
#define  STRDUP_TYPE 128 
 int /*<<< orphan*/  debugMaxMemSize ; 
 int /*<<< orphan*/  debugMemSize ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct tm* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* memlist ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  xmlMemMutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(FILE *fp)
{
#ifdef MEM_LIST
    MEMHDR *p;
    unsigned idx;
    int     nb = 0;
#if defined(HAVE_LOCALTIME) && defined(HAVE_STRFTIME)
    time_t currentTime;
    char buf[500];
    struct tm * tstruct;
#endif
#endif
    FILE *old_fp = fp;

    if (fp == NULL) {
	fp = FUNC1(".memorylist", "w");
	if (fp == NULL)
	    return;
    }

#ifdef MEM_LIST
#if defined(HAVE_LOCALTIME) && defined(HAVE_STRFTIME)
    currentTime = time(NULL);
    tstruct = localtime(&currentTime);
    strftime(buf, sizeof(buf) - 1, "%I:%M:%S %p", tstruct);
    fprintf(fp,"      %s\n\n", buf);
#endif


    fprintf(fp,"      MEMORY ALLOCATED : %lu, MAX was %lu\n",
            debugMemSize, debugMaxMemSize);
    fprintf(fp,"BLOCK  NUMBER   SIZE  TYPE\n");
    idx = 0;
    xmlMutexLock(xmlMemMutex);
    p = memlist;
    while (p) {
	  fprintf(fp,"%-5u  %6lu %6lu ",idx++,p->mh_number,
		  (unsigned long)p->mh_size);
        switch (p->mh_type) {
           case STRDUP_TYPE:fprintf(fp,"strdup()  in ");break;
           case MALLOC_TYPE:fprintf(fp,"malloc()  in ");break;
           case REALLOC_TYPE:fprintf(fp,"realloc() in ");break;
           case MALLOC_ATOMIC_TYPE:fprintf(fp,"atomicmalloc()  in ");break;
           case REALLOC_ATOMIC_TYPE:fprintf(fp,"atomicrealloc() in ");break;
           default:
	        fprintf(fp,"Unknown memory block, may be corrupted");
		xmlMutexUnlock(xmlMemMutex);
		if (old_fp == NULL)
		    fclose(fp);
		return;
        }
	if (p->mh_file != NULL) fprintf(fp,"%s(%u)", p->mh_file, p->mh_line);
        if (p->mh_tag != MEMTAG)
	      fprintf(fp,"  INVALID");
        nb++;
	if (nb < 100)
	    xmlMemContentShow(fp, p);
	else
	    fprintf(fp," skip");

        fprintf(fp,"\n");
        p = p->mh_next;
    }
    xmlMutexUnlock(xmlMemMutex);
#else
    FUNC2(fp,"Memory list not compiled (MEM_LIST not defined !)\n");
#endif
    if (old_fp == NULL)
	FUNC0(fp);
}