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
typedef  scalar_t__ xmlChar ;
typedef  TYPE_1__* xmlBufferPtr ;
typedef  int /*<<< orphan*/  xmlBuffer ;
struct TYPE_4__ {int size; int /*<<< orphan*/ * contentIO; scalar_t__* content; int /*<<< orphan*/  alloc; scalar_t__ use; } ;

/* Variables and functions */
 int /*<<< orphan*/  xmlBufferAllocScheme ; 
 int xmlDefaultBufferSize ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

xmlBufferPtr
FUNC4(void) {
    xmlBufferPtr ret;

    ret = (xmlBufferPtr) FUNC1(sizeof(xmlBuffer));
    if (ret == NULL) {
	FUNC3("creating buffer");
        return(NULL);
    }
    ret->use = 0;
    ret->size = xmlDefaultBufferSize;
    ret->alloc = xmlBufferAllocScheme;
    ret->content = (xmlChar *) FUNC2(ret->size * sizeof(xmlChar));
    if (ret->content == NULL) {
	FUNC3("creating buffer");
	FUNC0(ret);
        return(NULL);
    }
    ret->content[0] = 0;
    ret->contentIO = NULL;
    return(ret);
}