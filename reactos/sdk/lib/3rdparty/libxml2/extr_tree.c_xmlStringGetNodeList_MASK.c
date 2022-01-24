#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNodePtr ;
typedef  TYPE_2__* xmlEntityPtr ;
typedef  int /*<<< orphan*/  xmlDoc ;
typedef  char xmlChar ;
typedef  int /*<<< orphan*/ * xmlBufPtr ;
struct TYPE_12__ {scalar_t__ etype; char* content; int owner; TYPE_1__* last; TYPE_1__* children; } ;
struct TYPE_11__ {void* content; struct TYPE_11__* next; struct TYPE_11__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_BUFFER_ALLOC_HYBRID ; 
 scalar_t__ XML_INTERNAL_PREDEFINED_ENTITY ; 
 int /*<<< orphan*/  XML_TREE_INVALID_DEC ; 
 int /*<<< orphan*/  XML_TREE_INVALID_HEX ; 
 int /*<<< orphan*/  XML_TREE_UNTERMINATED_ENTITY ; 
 TYPE_1__* FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/  const*,char*) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC13 (char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,char const*) ; 

xmlNodePtr
FUNC15(const xmlDoc *doc, const xmlChar *value) {
    xmlNodePtr ret = NULL, last = NULL;
    xmlNodePtr node;
    xmlChar *val;
    const xmlChar *cur = value;
    const xmlChar *q;
    xmlEntityPtr ent;
    xmlBufPtr buf;

    if (value == NULL) return(NULL);

    buf = FUNC3(0);
    if (buf == NULL) return(NULL);
    FUNC7(buf, XML_BUFFER_ALLOC_HYBRID);

    q = cur;
    while (*cur != 0) {
	if (cur[0] == '&') {
	    int charval = 0;
	    xmlChar tmp;

	    /*
	     * Save the current text.
	     */
            if (cur != q) {
		if (FUNC1(buf, q, cur - q))
		    goto out;
	    }
	    q = cur;
	    if ((cur[1] == '#') && (cur[2] == 'x')) {
		cur += 3;
		tmp = *cur;
		while (tmp != ';') { /* Non input consuming loop */
		    if ((tmp >= '0') && (tmp <= '9'))
			charval = charval * 16 + (tmp - '0');
		    else if ((tmp >= 'a') && (tmp <= 'f'))
			charval = charval * 16 + (tmp - 'a') + 10;
		    else if ((tmp >= 'A') && (tmp <= 'F'))
			charval = charval * 16 + (tmp - 'A') + 10;
		    else {
			FUNC14(XML_TREE_INVALID_HEX, (xmlNodePtr) doc,
			           NULL);
			charval = 0;
			break;
		    }
		    cur++;
		    tmp = *cur;
		}
		if (tmp == ';')
		    cur++;
		q = cur;
	    } else if  (cur[1] == '#') {
		cur += 2;
		tmp = *cur;
		while (tmp != ';') { /* Non input consuming loops */
		    if ((tmp >= '0') && (tmp <= '9'))
			charval = charval * 10 + (tmp - '0');
		    else {
			FUNC14(XML_TREE_INVALID_DEC, (xmlNodePtr) doc,
			           NULL);
			charval = 0;
			break;
		    }
		    cur++;
		    tmp = *cur;
		}
		if (tmp == ';')
		    cur++;
		q = cur;
	    } else {
		/*
		 * Read the entity string
		 */
		cur++;
		q = cur;
		while ((*cur != 0) && (*cur != ';')) cur++;
		if (*cur == 0) {
		    FUNC14(XML_TREE_UNTERMINATED_ENTITY,
		               (xmlNodePtr) doc, (const char *) q);
		    goto out;
		}
		if (cur != q) {
		    /*
		     * Predefined entities don't generate nodes
		     */
		    val = FUNC13(q, cur - q);
		    ent = FUNC10(doc, val);
		    if ((ent != NULL) &&
			(ent->etype == XML_INTERNAL_PREDEFINED_ENTITY)) {

			if (FUNC2(buf, ent->content))
			    goto out;

		    } else {
			/*
			 * Flush buffer so far
			 */
			if (!FUNC6(buf)) {
			    node = FUNC11(doc, NULL);
			    node->content = FUNC4(buf);

			    if (last == NULL) {
				last = ret = node;
			    } else {
				last = FUNC0(last, node);
			    }
			}

			/*
			 * Create a new REFERENCE_REF node
			 */
			node = FUNC12(doc, val);
			if (node == NULL) {
			    if (val != NULL) FUNC9(val);
			    goto out;
			}
			else if ((ent != NULL) && (ent->children == NULL)) {
			    xmlNodePtr temp;

                            /* Set to non-NULL value to avoid recursion. */
			    ent->children = (xmlNodePtr) -1;
			    ent->children = FUNC15(doc,
				    (const xmlChar*)node->content);
			    ent->owner = 1;
			    temp = ent->children;
			    while (temp) {
				temp->parent = (xmlNodePtr)ent;
				ent->last = temp;
				temp = temp->next;
			    }
			}
			if (last == NULL) {
			    last = ret = node;
			} else {
			    last = FUNC0(last, node);
			}
		    }
		    FUNC9(val);
		}
		cur++;
		q = cur;
	    }
	    if (charval != 0) {
		xmlChar buffer[10];
		int len;

		len = FUNC8(buffer, charval);
		buffer[len] = 0;

		if (FUNC2(buf, buffer))
		    goto out;
		charval = 0;
	    }
	} else
	    cur++;
    }
    if ((cur != q) || (ret == NULL)) {
        /*
	 * Handle the last piece of text.
	 */
	FUNC1(buf, q, cur - q);
    }

    if (!FUNC6(buf)) {
	node = FUNC11(doc, NULL);
	node->content = FUNC4(buf);

	if (last == NULL) {
	    ret = node;
	} else {
	    FUNC0(last, node);
	}
    }

out:
    FUNC5(buf);
    return(ret);
}