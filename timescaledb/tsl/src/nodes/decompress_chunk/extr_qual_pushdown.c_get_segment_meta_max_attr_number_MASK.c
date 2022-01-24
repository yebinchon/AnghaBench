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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FormData_hypertable_compression ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static AttrNumber
FUNC3(FormData_hypertable_compression *compression_info,
								 Oid compressed_relid)
{
	char *meta_col_name = FUNC0(compression_info);

	if (meta_col_name == NULL)
		FUNC1(ERROR, "could not find meta column");

	return FUNC2(compressed_relid, meta_col_name);
}