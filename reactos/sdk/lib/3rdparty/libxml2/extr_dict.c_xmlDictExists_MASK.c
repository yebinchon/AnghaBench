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
typedef  TYPE_1__* xmlDictPtr ;
typedef  TYPE_2__* xmlDictEntryPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_6__ {scalar_t__ valid; unsigned long okey; unsigned int len; int /*<<< orphan*/  const* name; struct TYPE_6__* next; } ;
struct TYPE_5__ {unsigned int limit; unsigned long size; TYPE_2__* dict; struct TYPE_5__* subdict; } ;

/* Variables and functions */
 int INT_MAX ; 
 unsigned long MIN_DICT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned int FUNC1 (char const*) ; 
 unsigned long FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 

const xmlChar *
FUNC4(xmlDictPtr dict, const xmlChar *name, int len) {
    unsigned long key, okey, nbi = 0;
    xmlDictEntryPtr insert;
    unsigned int l;

    if ((dict == NULL) || (name == NULL))
	return(NULL);

    if (len < 0)
        l = FUNC1((const char *) name);
    else
        l = len;
    if (((dict->limit > 0) && (l >= dict->limit)) ||
        (l > INT_MAX / 2))
        return(NULL);

    /*
     * Check for duplicate and insertion location.
     */
    okey = FUNC2(dict, name, l);
    key = okey % dict->size;
    if (dict->dict[key].valid == 0) {
	insert = NULL;
    } else {
	for (insert = &(dict->dict[key]); insert->next != NULL;
	     insert = insert->next) {
#ifdef __GNUC__
	    if ((insert->okey == okey) && (insert->len == l)) {
		if (!FUNC0(insert->name, name, l))
		    return(insert->name);
	    }
#else
	    if ((insert->okey == okey) && (insert->len == l) &&
	        (!xmlStrncmp(insert->name, name, l)))
		return(insert->name);
#endif
	    nbi++;
	}
#ifdef __GNUC__
	if ((insert->okey == okey) && (insert->len == l)) {
	    if (!FUNC0(insert->name, name, l))
		return(insert->name);
	}
#else
	if ((insert->okey == okey) && (insert->len == l) &&
	    (!xmlStrncmp(insert->name, name, l)))
	    return(insert->name);
#endif
    }

    if (dict->subdict) {
        unsigned long skey;

        /* we cannot always reuse the same okey for the subdict */
        if (((dict->size == MIN_DICT_SIZE) &&
	     (dict->subdict->size != MIN_DICT_SIZE)) ||
            ((dict->size != MIN_DICT_SIZE) &&
	     (dict->subdict->size == MIN_DICT_SIZE)))
	    skey = FUNC2(dict->subdict, name, l);
	else
	    skey = okey;

	key = skey % dict->subdict->size;
	if (dict->subdict->dict[key].valid != 0) {
	    xmlDictEntryPtr tmp;

	    for (tmp = &(dict->subdict->dict[key]); tmp->next != NULL;
		 tmp = tmp->next) {
#ifdef __GNUC__
		if ((tmp->okey == skey) && (tmp->len == l)) {
		    if (!FUNC0(tmp->name, name, l))
			return(tmp->name);
		}
#else
		if ((tmp->okey == skey) && (tmp->len == l) &&
		    (!xmlStrncmp(tmp->name, name, l)))
		    return(tmp->name);
#endif
		nbi++;
	    }
#ifdef __GNUC__
	    if ((tmp->okey == skey) && (tmp->len == l)) {
		if (!FUNC0(tmp->name, name, l))
		    return(tmp->name);
	    }
#else
	    if ((tmp->okey == skey) && (tmp->len == l) &&
		(!xmlStrncmp(tmp->name, name, l)))
		return(tmp->name);
#endif
	}
    }

    /* not found */
    return(NULL);
}