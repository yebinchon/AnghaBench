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
struct target_file {struct target_file* case_name; struct target_file* normalized_name; struct target_file* target_name; struct target_file* source_name; struct target_file* next; struct target_file* head; struct target_file* child; } ;
struct target_dir_hash {int dummy; } ;
struct target_dir_entry {struct target_dir_entry* case_name; struct target_dir_entry* normalized_name; struct target_dir_entry* target_name; struct target_dir_entry* source_name; struct target_dir_entry* next; struct target_dir_entry* head; struct target_dir_entry* child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct target_dir_hash*,struct target_file*) ; 
 int /*<<< orphan*/  FUNC1 (struct target_file*) ; 

__attribute__((used)) static void
FUNC2(struct target_dir_hash *dh, struct target_dir_entry *de)
{
    struct target_file *tf;
    struct target_dir_entry *te;

    while ((te = de->child))
    {
        de->child = te->next;
        FUNC2(dh, te);
        FUNC1(te);
    }
    while ((tf = de->head))
    {
        de->head = tf->next;
        FUNC1(tf->source_name);
        FUNC1(tf->target_name);
        FUNC1(tf);
    }

    FUNC0(dh, de);
    FUNC1(de->normalized_name);
    FUNC1(de->case_name);
}