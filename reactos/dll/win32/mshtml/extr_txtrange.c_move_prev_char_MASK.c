#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int type; int off; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ rangepoint_t ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  char WCHAR ;
typedef  char PRUnichar ;

/* Variables and functions */
#define  ELEMENT_NODE 129 
#define  TEXT_NODE 128 
 int /*<<< orphan*/  brW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  hrW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static WCHAR FUNC9(rangepoint_t *iter)
{
    rangepoint_t last_space;
    nsIDOMNode *node;
    WCHAR cspace = 0;
    const WCHAR *p;

    do {
        switch(iter->type) {
        case TEXT_NODE: {
            const PRUnichar *str;
            nsAString nsstr;
            WCHAR c;

            if(!iter->off)
                break;

            FUNC2(iter->node, &nsstr, &str);

            p = str+iter->off-1;
            c = *p;

            if(FUNC5(c)) {
                while(p > str && FUNC5(*(p-1)))
                    p--;

                if(cspace)
                    FUNC0(&last_space);
                else
                    cspace = ' ';

                iter->off = p-str;
                FUNC6(&nsstr);
                if(p == str) { /* continue to skip spaces */
                    FUNC3(&last_space, iter->node, iter->off);
                    break;
                }

                return cspace;
            }else {
                FUNC6(&nsstr);
            }

            /* If we have a non-space char and we're skipping spaces, stop and return the last found space. */
            if(cspace) {
                FUNC0(iter);
                *iter = last_space;
                return cspace;
            }

            iter->off--;
            return c;
        }
        case ELEMENT_NODE:
            if(!iter->off)
                break;

            node = FUNC1(iter->node, iter->off-1);
            if(!node)
                break;

            if(FUNC4(node, brW)) {
                if(cspace)
                    FUNC0(&last_space);
                cspace = '\n';
                FUNC3(&last_space, iter->node, iter->off-1);
            }else if(FUNC4(node, hrW)) {
                FUNC7(node);
                if(cspace) {
                    FUNC0(iter);
                    *iter = last_space;
                    return cspace;
                }

                iter->off--;
                return '\n';
            }

            FUNC7(node);
        }
    }while(FUNC8(iter));

    if(cspace) {
        FUNC0(iter);
        *iter = last_space;
        return cspace;
    }

    return 0;
}