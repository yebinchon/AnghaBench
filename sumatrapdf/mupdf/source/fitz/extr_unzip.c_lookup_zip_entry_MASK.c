#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zip_entry ;
struct TYPE_6__ {int count; TYPE_1__* entries; } ;
typedef  TYPE_2__ fz_zip_archive ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zip_entry *FUNC1(fz_context *ctx, fz_zip_archive *zip, const char *name)
{
	int i;
	if (name[0] == '/')
		++name;
	for (i = 0; i < zip->count; i++)
		if (!FUNC0(name, zip->entries[i].name))
			return &zip->entries[i];
	return NULL;
}