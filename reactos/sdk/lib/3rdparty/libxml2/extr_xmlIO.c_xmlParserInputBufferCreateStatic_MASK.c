#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlParserInputBufferPtr ;
typedef  int /*<<< orphan*/  xmlParserInputBuffer ;
typedef  int /*<<< orphan*/  xmlCharEncoding ;
struct TYPE_5__ {int compressed; int /*<<< orphan*/ * closecallback; int /*<<< orphan*/ * readcallback; void* context; int /*<<< orphan*/ * raw; int /*<<< orphan*/ * encoder; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (void*,size_t) ; 
 int xmlDefaultBufferSize ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 

xmlParserInputBufferPtr
FUNC7(const char *mem, int size,
                                 xmlCharEncoding enc) {
    xmlParserInputBufferPtr ret;

    if (size < 0) return(NULL);
    if (mem == NULL) return(NULL);

    ret = (xmlParserInputBufferPtr) FUNC6(sizeof(xmlParserInputBuffer));
    if (ret == NULL) {
	FUNC5("creating input buffer");
	return(NULL);
    }
    FUNC0(ret, 0, (size_t) sizeof(xmlParserInputBuffer));
    ret->buffer = FUNC2((void *)mem, (size_t) size);
    if (ret->buffer == NULL) {
        FUNC3(ret);
	return(NULL);
    }
    ret->encoder = FUNC4(enc);
    if (ret->encoder != NULL)
        ret->raw = FUNC1(2 * xmlDefaultBufferSize);
    else
        ret->raw = NULL;
    ret->compressed = -1;
    ret->context = (void *) mem;
    ret->readcallback = NULL;
    ret->closecallback = NULL;

    return(ret);
}