#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_1__* xmlBufferPtr ;
typedef  int /*<<< orphan*/  xmlBuffer ;
struct TYPE_3__ {size_t use; size_t size; int /*<<< orphan*/ * content; int /*<<< orphan*/  alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_BUFFER_ALLOC_IMMUTABLE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

xmlBufferPtr
FUNC2(void *mem, size_t size) {
    xmlBufferPtr ret;

    if ((mem == NULL) || (size == 0))
        return(NULL);

    ret = (xmlBufferPtr) FUNC0(sizeof(xmlBuffer));
    if (ret == NULL) {
	FUNC1("creating buffer");
        return(NULL);
    }
    ret->use = size;
    ret->size = size;
    ret->alloc = XML_BUFFER_ALLOC_IMMUTABLE;
    ret->content = (xmlChar *) mem;
    return(ret);
}