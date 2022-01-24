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
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  FSE_DTable ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FSED_ALLOC_TAG ; 
 int FUNC1 (unsigned int) ; 
 unsigned int FSE_TABLELOG_ABSOLUTE_MAX ; 
 int /*<<< orphan*/  PagedPool ; 

FSE_DTable* FUNC2 (unsigned tableLog)
{
    if (tableLog > FSE_TABLELOG_ABSOLUTE_MAX) tableLog = FSE_TABLELOG_ABSOLUTE_MAX;
    return (FSE_DTable*)FUNC0(PagedPool, FUNC1(tableLog) * sizeof (U32), FSED_ALLOC_TAG);
}