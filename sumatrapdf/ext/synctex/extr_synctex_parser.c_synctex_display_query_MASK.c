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
typedef  TYPE_1__* synctex_scanner_t ;
typedef  int /*<<< orphan*/ * synctex_node_t ;
struct TYPE_4__ {int number_of_lists; int /*<<< orphan*/ ** lists_of_friends; } ;

/* Variables and functions */
 int INT_MAX ; 
 char* SYNCTEX_CUR ; 
 char* SYNCTEX_END ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* SYNCTEX_START ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 char* FUNC6 (char*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ synctex_node_type_boundary ; 
 scalar_t__ synctex_node_type_kern ; 
 int FUNC8 (TYPE_1__*,char const*) ; 

int FUNC9(synctex_scanner_t scanner,const char * name,int line,int column) {
#	ifdef __DARWIN_UNIX03
#       pragma unused(column)
#   endif
	int tag = FUNC8(scanner,name);
	size_t size = 0;
	int friend_index = 0;
	int max_line = 0;
	synctex_node_t node = NULL;
	if (tag == 0) {
		FUNC5("SyncTeX Warning: No tag for %s\n",name);
		return -1;
	}
	FUNC4(SYNCTEX_START);
	SYNCTEX_CUR = SYNCTEX_END = SYNCTEX_START = NULL;
	max_line = line < INT_MAX-scanner->number_of_lists ? line+scanner->number_of_lists:INT_MAX;
	while(line<max_line) {
		/*  This loop will only be performed once for advanced viewers */
		friend_index = (tag+line)%(scanner->number_of_lists);
		if ((node = (scanner->lists_of_friends)[friend_index])) {
			do {
				if ((FUNC7(node)>=synctex_node_type_boundary)
					&& (tag == FUNC3(node))
						&& (line == FUNC1(node))) {
					if (SYNCTEX_CUR == SYNCTEX_END) {
						size += 16;
						SYNCTEX_END = FUNC6(SYNCTEX_START,size*sizeof(synctex_node_t *));
						SYNCTEX_CUR += SYNCTEX_END - SYNCTEX_START;
						SYNCTEX_START = SYNCTEX_END;
						SYNCTEX_END = SYNCTEX_START + size*sizeof(synctex_node_t *);
					}			
					*(synctex_node_t *)SYNCTEX_CUR = node;
					SYNCTEX_CUR += sizeof(synctex_node_t);
				}
			} while((node = FUNC0(node)));
			if (SYNCTEX_START == NULL) {
				/*  We did not find any matching boundary, retry with glue or kern */
				node = (scanner->lists_of_friends)[friend_index];/*  no need to test it again, already done */
				do {
					if ((FUNC7(node)>=synctex_node_type_kern)
						&& (tag == FUNC3(node))
							&& (line == FUNC1(node))) {
						if (SYNCTEX_CUR == SYNCTEX_END) {
							size += 16;
							SYNCTEX_END = FUNC6(SYNCTEX_START,size*sizeof(synctex_node_t *));
							SYNCTEX_CUR += SYNCTEX_END - SYNCTEX_START;
							SYNCTEX_START = SYNCTEX_END;
							SYNCTEX_END = SYNCTEX_START + size*sizeof(synctex_node_t *);
						}			
						*(synctex_node_t *)SYNCTEX_CUR = node;
						SYNCTEX_CUR += sizeof(synctex_node_t);
					}
				} while((node = FUNC0(node)));
				if (SYNCTEX_START == NULL) {
					/*  We did not find any matching glue or kern, retry with boxes */
					node = (scanner->lists_of_friends)[friend_index];/*  no need to test it again, already done */
					do {
						if ((tag == FUNC3(node))
								&& (line == FUNC1(node))) {
							if (SYNCTEX_CUR == SYNCTEX_END) {
								size += 16;
								SYNCTEX_END = FUNC6(SYNCTEX_START,size*sizeof(synctex_node_t *));
								SYNCTEX_CUR += SYNCTEX_END - SYNCTEX_START;
								SYNCTEX_START = SYNCTEX_END;
								SYNCTEX_END = SYNCTEX_START + size*sizeof(synctex_node_t *);
							}			
							*(synctex_node_t *)SYNCTEX_CUR = node;
							SYNCTEX_CUR += sizeof(synctex_node_t);
						}
					} while((node = FUNC0(node)));
				}
			}
			SYNCTEX_END = SYNCTEX_CUR;
			/*  Now reverse the order to have nodes in display order, and keep just a few nodes */
			if ((SYNCTEX_START) && (SYNCTEX_END))
			{
				synctex_node_t * start_ref = (synctex_node_t *)SYNCTEX_START;
				synctex_node_t * end_ref   = (synctex_node_t *)SYNCTEX_END;
				end_ref -= 1;
				while(start_ref < end_ref) {
					node = *start_ref;
					*start_ref = *end_ref;
					*end_ref = node;
					start_ref += 1;
					end_ref -= 1;
				}
				/*  Basically, we keep the first node for each parent.
				 *  More precisely, we keep only nodes that are not descendants of
				 *  their predecessor's parent. */
				start_ref = (synctex_node_t *)SYNCTEX_START;
				end_ref   = (synctex_node_t *)SYNCTEX_START;
		next_end:
				end_ref += 1; /*  we allways have start_ref<= end_ref*/
				if (end_ref < (synctex_node_t *)SYNCTEX_END) {
					node = *end_ref;
					while((node = FUNC2(node))) {
						if (FUNC2(*start_ref) == node) {
							goto next_end;
						}
					}
					start_ref += 1;
					*start_ref = *end_ref;
					goto next_end;
				}
				start_ref += 1;
                SYNCTEX_END = (char *)start_ref;
                SYNCTEX_CUR = NULL;// added on behalf of Jose Alliste
				return (SYNCTEX_END-SYNCTEX_START)/sizeof(synctex_node_t);// added on behalf Jan Sundermeyer
            }
			SYNCTEX_CUR = NULL;
			// return (SYNCTEX_END-SYNCTEX_START)/sizeof(synctex_node_t); removed on behalf Jan Sundermeyer
		}
#       if defined(__SYNCTEX_STRONG_DISPLAY_QUERY__)
		break;
#       else
		++line;
#       endif
	}
	return 0;
}