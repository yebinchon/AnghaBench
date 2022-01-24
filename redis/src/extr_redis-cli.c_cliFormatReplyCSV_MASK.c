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
typedef  int /*<<< orphan*/  sds ;
struct TYPE_3__ {int type; unsigned int elements; struct TYPE_3__** element; int /*<<< orphan*/  integer; int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ redisReply ;

/* Variables and functions */
#define  REDIS_REPLY_ARRAY 137 
#define  REDIS_REPLY_BOOL 136 
#define  REDIS_REPLY_DOUBLE 135 
#define  REDIS_REPLY_ERROR 134 
#define  REDIS_REPLY_INTEGER 133 
#define  REDIS_REPLY_MAP 132 
#define  REDIS_REPLY_NIL 131 
#define  REDIS_REPLY_STATUS 130 
#define  REDIS_REPLY_STRING 129 
#define  REDIS_REPLY_VERB 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sds FUNC10(redisReply *r) {
    unsigned int i;

    sds out = FUNC6();
    switch (r->type) {
    case REDIS_REPLY_ERROR:
        out = FUNC2(out,"ERROR,");
        out = FUNC5(out,r->str,FUNC9(r->str));
    break;
    case REDIS_REPLY_STATUS:
        out = FUNC5(out,r->str,r->len);
    break;
    case REDIS_REPLY_INTEGER:
        out = FUNC4(out,"%lld",r->integer);
    break;
    case REDIS_REPLY_DOUBLE:
        out = FUNC4(out,"%s",r->str);
        break;
    case REDIS_REPLY_STRING:
    case REDIS_REPLY_VERB:
        out = FUNC5(out,r->str,r->len);
    break;
    case REDIS_REPLY_NIL:
        out = FUNC2(out,"NULL");
    break;
    case REDIS_REPLY_BOOL:
        out = FUNC2(out,r->integer ? "true" : "false");
    break;
    case REDIS_REPLY_ARRAY:
    case REDIS_REPLY_MAP: /* CSV has no map type, just output flat list. */
        for (i = 0; i < r->elements; i++) {
            sds tmp = FUNC10(r->element[i]);
            out = FUNC3(out,tmp,FUNC8(tmp));
            if (i != r->elements-1) out = FUNC2(out,",");
            FUNC7(tmp);
        }
    break;
    default:
        FUNC1(stderr,"Unknown reply type: %d\n", r->type);
        FUNC0(1);
    }
    return out;
}