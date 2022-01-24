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
typedef  int /*<<< orphan*/  FSEv07_DTable ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int FSEv07_TABLELOG_ABSOLUTE_MAX ; 
 scalar_t__ FUNC1 (int) ; 

FSEv07_DTable* FUNC2 (unsigned tableLog)
{
    if (tableLog > FSEv07_TABLELOG_ABSOLUTE_MAX) tableLog = FSEv07_TABLELOG_ABSOLUTE_MAX;
    return (FSEv07_DTable*)FUNC1( FUNC0(tableLog) * sizeof (U32) );
}