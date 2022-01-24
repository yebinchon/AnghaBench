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
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_1__* xmlBufferPtr ;
struct TYPE_4__ {scalar_t__ alloc; int use; unsigned int size; scalar_t__* content; } ;

/* Variables and functions */
 scalar_t__ XML_BUFFER_ALLOC_IMMUTABLE ; 
 int XML_ERR_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(xmlBufferPtr buf, const xmlChar *str, int len) {
    unsigned int needSize;

    if ((str == NULL) || (buf == NULL)) {
	return -1;
    }
    if (buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE) return -1;
    if (len < -1) {
#ifdef DEBUG_BUFFER
        xmlGenericError(xmlGenericErrorContext,
		"xmlBufferAdd: len < 0\n");
#endif
	return -1;
    }
    if (len == 0) return 0;

    if (len < 0)
        len = FUNC3(str);

    if (len < 0) return -1;
    if (len == 0) return 0;

    needSize = buf->use + len + 2;
    if (needSize > buf->size){
        if (!FUNC1(buf, needSize)){
	    FUNC4("growing buffer");
            return XML_ERR_NO_MEMORY;
        }
    }

    FUNC0(&buf->content[buf->use], str, len*sizeof(xmlChar));
    buf->use += len;
    buf->content[buf->use] = 0;
    return 0;
}