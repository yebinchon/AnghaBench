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
typedef  TYPE_1__* xmlDictStringsPtr ;
typedef  int /*<<< orphan*/  xmlDictStrings ;
typedef  TYPE_2__* xmlDictPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_6__ {size_t limit; TYPE_1__* strings; } ;
struct TYPE_5__ {size_t size; scalar_t__ nbStrings; int /*<<< orphan*/ * free; struct TYPE_5__* next; int /*<<< orphan*/ * array; int /*<<< orphan*/ * end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  const* FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static const xmlChar *
FUNC4(xmlDictPtr dict, const xmlChar *prefix, unsigned int plen,
                 const xmlChar *name, unsigned int namelen)
{
    xmlDictStringsPtr pool;
    const xmlChar *ret;
    size_t size = 0; /* + sizeof(_xmlDictStrings) == 1024 */
    size_t limit = 0;

    if (prefix == NULL) return(FUNC2(dict, name, namelen));

#ifdef DICT_DEBUG_PATTERNS
    fprintf(stderr, "=");
#endif
    pool = dict->strings;
    while (pool != NULL) {
	if ((size_t)(pool->end - pool->free) > namelen + plen + 1)
	    goto found_pool;
	if (pool->size > size) size = pool->size;
        limit += pool->size;
	pool = pool->next;
    }
    /*
     * Not found, need to allocate
     */
    if (pool == NULL) {
        if ((dict->limit > 0) && (limit > dict->limit)) {
            return(NULL);
        }

        if (size == 0) size = 1000;
	else size *= 4; /* exponential growth */
        if (size < 4 * (namelen + plen + 1))
	    size = 4 * (namelen + plen + 1); /* just in case ! */
	pool = (xmlDictStringsPtr) FUNC3(sizeof(xmlDictStrings) + size);
	if (pool == NULL)
	    return(NULL);
	pool->size = size;
	pool->nbStrings = 0;
	pool->free = &pool->array[0];
	pool->end = &pool->array[size];
	pool->next = dict->strings;
	dict->strings = pool;
#ifdef DICT_DEBUG_PATTERNS
        fprintf(stderr, "+");
#endif
    }
found_pool:
    ret = pool->free;
    FUNC1(pool->free, prefix, plen);
    pool->free += plen;
    *(pool->free++) = ':';
    FUNC1(pool->free, name, namelen);
    pool->free += namelen;
    *(pool->free++) = 0;
    pool->nbStrings++;
    return(ret);
}