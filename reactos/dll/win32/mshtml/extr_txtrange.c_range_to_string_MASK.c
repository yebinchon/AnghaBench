#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int len; scalar_t__* buf; scalar_t__ size; } ;
typedef  TYPE_1__ wstrbuf_t ;
struct TYPE_18__ {scalar_t__ type; int off; int /*<<< orphan*/  node; } ;
typedef  TYPE_2__ rangepoint_t ;
typedef  int /*<<< orphan*/  nsIDOMNode ;
typedef  int /*<<< orphan*/  nsAString ;
typedef  scalar_t__ cpp_bool ;
typedef  scalar_t__ WCHAR ;
struct TYPE_19__ {int /*<<< orphan*/  nsrange; } ;
typedef  int /*<<< orphan*/  PRUnichar ;
typedef  TYPE_3__ HTMLTxtRange ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ TEXT_NODE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__* FUNC12 (scalar_t__*,char) ; 
 int FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC17(HTMLTxtRange *This, wstrbuf_t *buf)
{
    rangepoint_t end_pos, iter;
    cpp_bool collapsed;

    FUNC9(This->nsrange, &collapsed);
    if(collapsed) {
        FUNC16(buf);
        buf->buf = NULL;
        buf->size = 0;
        return;
    }

    FUNC3(This, &end_pos);
    FUNC4(This, &iter);

    do {
        if(iter.type == TEXT_NODE) {
            const PRUnichar *str;
            nsAString nsstr;

            FUNC5(iter.node, &nsstr, &str);

            if(iter.node == end_pos.node) {
                FUNC15(buf, str+iter.off, end_pos.off-iter.off);
                FUNC7(&nsstr);
                break;
            }

            FUNC15(buf, str+iter.off, FUNC13(str+iter.off));
            FUNC7(&nsstr);
        }else {
            nsIDOMNode *node;

            node = FUNC2(iter.node, iter.off);
            if(node) {
                FUNC14(buf, node, TRUE);
                FUNC8(node);
            }
        }

        if(!FUNC11(&iter)) {
            FUNC0("End of document?\n");
            break;
        }
    }while(!FUNC10(&iter, &end_pos));

    FUNC1(&iter);
    FUNC1(&end_pos);

    if(buf->len) {
        WCHAR *p;

        for(p = buf->buf+buf->len-1; p >= buf->buf && FUNC6(*p); p--);

        p = FUNC12(p, '\r');
        if(p)
            *p = 0;
    }
}