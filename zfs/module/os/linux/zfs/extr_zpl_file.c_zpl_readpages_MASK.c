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
struct list_head {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  filler_t ;

/* Variables and functions */
 int FUNC0 (struct address_space*,struct list_head*,int /*<<< orphan*/ *,struct file*) ; 
 scalar_t__ zpl_readpage ; 

__attribute__((used)) static int
FUNC1(struct file *filp, struct address_space *mapping,
    struct list_head *pages, unsigned nr_pages)
{
	return (FUNC0(mapping, pages,
	    (filler_t *)zpl_readpage, filp));
}