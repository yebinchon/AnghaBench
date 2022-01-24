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
struct target_file {char* target_name; void* source_name; struct target_file* next; } ;
struct target_dir_hash {int dummy; } ;
struct target_dir_entry {struct target_file* head; } ;

/* Variables and functions */
 struct target_file* FUNC0 (int,int) ; 
 struct target_dir_entry* FUNC1 (struct target_dir_hash*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char**,char**) ; 
 void* FUNC5 (char const*) ; 

struct target_file *
FUNC6(struct target_dir_hash *dh, const char *source, const char *target)
{
    struct target_file *tf;
    struct target_dir_entry *de;
    char *targetdir  = NULL;
    char *targetfile = NULL;
    char *targetnorm;

    /* First create the directory; check whether the file name is valid and bail out if not */
    FUNC4(target, &targetdir, &targetfile);
    if (!*targetfile)
    {
        FUNC2(targetdir);
        FUNC2(targetfile);
        return NULL;
    }
    targetnorm = FUNC5(targetdir);
    FUNC3(targetnorm);
    de = FUNC1(dh, targetdir, targetnorm);
    FUNC2(targetnorm);
    FUNC2(targetdir);

    /* Now add the file */
    tf = FUNC0(1, sizeof(*tf));
    tf->next = de->head;
    de->head = tf;
    tf->source_name = FUNC5(source);
    tf->target_name = targetfile;

    return tf;
}