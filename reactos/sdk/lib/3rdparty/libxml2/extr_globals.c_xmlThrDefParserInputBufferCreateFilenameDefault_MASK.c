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
typedef  int /*<<< orphan*/ * xmlParserInputBufferCreateFilenameFunc ;

/* Variables and functions */
 int /*<<< orphan*/ * __xmlParserInputBufferCreateFilename ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * xmlParserInputBufferCreateFilenameValueThrDef ; 
 int /*<<< orphan*/  xmlThrDefMutex ; 

xmlParserInputBufferCreateFilenameFunc
FUNC2(xmlParserInputBufferCreateFilenameFunc func)
{
    xmlParserInputBufferCreateFilenameFunc old;

    FUNC0(xmlThrDefMutex);
    old = xmlParserInputBufferCreateFilenameValueThrDef;
    if (old == NULL) {
		old = __xmlParserInputBufferCreateFilename;
	}

    xmlParserInputBufferCreateFilenameValueThrDef = func;
    FUNC1(xmlThrDefMutex);

    return(old);
}