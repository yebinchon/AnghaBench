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
typedef  int /*<<< orphan*/  LineListPtr ;
typedef  int /*<<< orphan*/  FileInfoListPtr ;
typedef  int /*<<< orphan*/  FTPCIPtr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(FTPCIPtr cip, LineListPtr fileList, FileInfoListPtr files)
{
	return (FUNC0(cip, fileList, files, 0));
}