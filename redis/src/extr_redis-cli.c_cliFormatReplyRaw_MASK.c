#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_4__ {int type; char* str; int len; char* integer; size_t elements; struct TYPE_4__** element; } ;
typedef  TYPE_1__ redisReply ;
struct TYPE_5__ {int eval_ldb_end; char* mb_delim; int /*<<< orphan*/  output; int /*<<< orphan*/  eval_ldb; int /*<<< orphan*/  enable_ldb_on_eval; } ;

/* Variables and functions */
 int /*<<< orphan*/  OUTPUT_STANDARD ; 
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
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__ config ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int const) ; 
 char* FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char*,char*,char*) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (char*,char*) ; 

__attribute__((used)) static sds FUNC11(redisReply *r) {
    sds out = FUNC7(), tmp;
    size_t i;

    switch (r->type) {
    case REDIS_REPLY_NIL:
        /* Nothing... */
        break;
    case REDIS_REPLY_ERROR:
        out = FUNC5(out,r->str,r->len);
        out = FUNC5(out,"\n",1);
        break;
    case REDIS_REPLY_STATUS:
    case REDIS_REPLY_STRING:
    case REDIS_REPLY_VERB:
        if (r->type == REDIS_REPLY_STATUS && config.eval_ldb) {
            /* The Lua debugger replies with arrays of simple (status)
             * strings. We colorize the output for more fun if this
             * is a debugging session. */

            /* Detect the end of a debugging session. */
            if (FUNC10(r->str,"<endsession>") == r->str) {
                config.enable_ldb_on_eval = 0;
                config.eval_ldb = 0;
                config.eval_ldb_end = 1; /* Signal the caller session ended. */
                config.output = OUTPUT_STANDARD;
                FUNC0();
            } else {
                out = FUNC3(out,r->str,r->len);
            }
        } else {
            out = FUNC5(out,r->str,r->len);
        }
        break;
    case REDIS_REPLY_BOOL:
        out = FUNC4(out,r->integer ? "(true)" : "(false)");
    break;
    case REDIS_REPLY_INTEGER:
        out = FUNC6(out,"%lld",r->integer);
        break;
    case REDIS_REPLY_DOUBLE:
        out = FUNC6(out,"%s",r->str);
        break;
    case REDIS_REPLY_ARRAY:
        for (i = 0; i < r->elements; i++) {
            if (i > 0) out = FUNC4(out,config.mb_delim);
            tmp = FUNC11(r->element[i]);
            out = FUNC5(out,tmp,FUNC9(tmp));
            FUNC8(tmp);
        }
        break;
    case REDIS_REPLY_MAP:
        for (i = 0; i < r->elements; i += 2) {
            if (i > 0) out = FUNC4(out,config.mb_delim);
            tmp = FUNC11(r->element[i]);
            out = FUNC5(out,tmp,FUNC9(tmp));
            FUNC8(tmp);

            out = FUNC5(out," ",1);
            tmp = FUNC11(r->element[i+1]);
            out = FUNC5(out,tmp,FUNC9(tmp));
            FUNC8(tmp);
        }
        break;
    default:
        FUNC2(stderr,"Unknown reply type: %d\n", r->type);
        FUNC1(1);
    }
    return out;
}