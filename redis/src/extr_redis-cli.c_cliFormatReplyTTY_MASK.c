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
typedef  char* sds ;
struct TYPE_3__ {int type; char* str; unsigned int elements; struct TYPE_3__** element; int /*<<< orphan*/  integer; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ redisReply ;
typedef  int /*<<< orphan*/  _prefixfmt ;

/* Variables and functions */
#define  REDIS_REPLY_ARRAY 138 
#define  REDIS_REPLY_BOOL 137 
#define  REDIS_REPLY_DOUBLE 136 
#define  REDIS_REPLY_ERROR 135 
#define  REDIS_REPLY_INTEGER 134 
#define  REDIS_REPLY_MAP 133 
#define  REDIS_REPLY_NIL 132 
#define  REDIS_REPLY_SET 131 
#define  REDIS_REPLY_STATUS 130 
#define  REDIS_REPLY_STRING 129 
#define  REDIS_REPLY_VERB 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,unsigned int) ; 
 char* FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char*,char*,...) ; 
 char* FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,unsigned int,char) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static sds FUNC13(redisReply *r, char *prefix) {
    sds out = FUNC7();
    switch (r->type) {
    case REDIS_REPLY_ERROR:
        out = FUNC5(out,"(error) %s\n", r->str);
    break;
    case REDIS_REPLY_STATUS:
        out = FUNC3(out,r->str);
        out = FUNC3(out,"\n");
    break;
    case REDIS_REPLY_INTEGER:
        out = FUNC5(out,"(integer) %lld\n",r->integer);
    break;
    case REDIS_REPLY_DOUBLE:
        out = FUNC5(out,"(double) %s\n",r->str);
    break;
    case REDIS_REPLY_STRING:
    case REDIS_REPLY_VERB:
        /* If you are producing output for the standard output we want
        * a more interesting output with quoted characters and so forth,
        * unless it's a verbatim string type. */
        if (r->type == REDIS_REPLY_STRING) {
            out = FUNC6(out,r->str,r->len);
            out = FUNC3(out,"\n");
        } else {
            out = FUNC4(out,r->str,r->len);
            out = FUNC3(out,"\n");
        }
    break;
    case REDIS_REPLY_NIL:
        out = FUNC3(out,"(nil)\n");
    break;
    case REDIS_REPLY_BOOL:
        out = FUNC3(out,r->integer ? "(true)\n" : "(false)\n");
    break;
    case REDIS_REPLY_ARRAY:
    case REDIS_REPLY_MAP:
    case REDIS_REPLY_SET:
        if (r->elements == 0) {
            if (r->type == REDIS_REPLY_ARRAY)
                out = FUNC3(out,"(empty array)\n");
            else if (r->type == REDIS_REPLY_MAP)
                out = FUNC3(out,"(empty hash)\n");
            else if (r->type == REDIS_REPLY_SET)
                out = FUNC3(out,"(empty set)\n");
            else
                out = FUNC3(out,"(empty aggregate type)\n");
        } else {
            unsigned int i, idxlen = 0;
            char _prefixlen[16];
            char _prefixfmt[16];
            sds _prefix;
            sds tmp;

            /* Calculate chars needed to represent the largest index */
            i = r->elements;
            if (r->type == REDIS_REPLY_MAP) i /= 2;
            do {
                idxlen++;
                i /= 10;
            } while(i);

            /* Prefix for nested multi bulks should grow with idxlen+2 spaces */
            FUNC2(_prefixlen,' ',idxlen+2);
            _prefixlen[idxlen+2] = '\0';
            _prefix = FUNC3(FUNC10(prefix),_prefixlen);

            /* Setup prefix format for every entry */
            char numsep;
            if (r->type == REDIS_REPLY_SET) numsep = '~';
            else if (r->type == REDIS_REPLY_MAP) numsep = '#';
            else numsep = ')';
            FUNC12(_prefixfmt,sizeof(_prefixfmt),"%%s%%%ud%c ",idxlen,numsep);

            for (i = 0; i < r->elements; i++) {
                unsigned int human_idx = (r->type == REDIS_REPLY_MAP) ?
                                         i/2 : i;
                human_idx++; /* Make it 1-based. */

                /* Don't use the prefix for the first element, as the parent
                 * caller already prepended the index number. */
                out = FUNC5(out,_prefixfmt,i == 0 ? "" : prefix,human_idx);

                /* Format the multi bulk entry */
                tmp = FUNC13(r->element[i],_prefix);
                out = FUNC4(out,tmp,FUNC9(tmp));
                FUNC8(tmp);

                /* For maps, format the value as well. */
                if (r->type == REDIS_REPLY_MAP) {
                    i++;
                    FUNC11(out,0,-2);
                    out = FUNC3(out," => ");
                    tmp = FUNC13(r->element[i],_prefix);
                    out = FUNC4(out,tmp,FUNC9(tmp));
                    FUNC8(tmp);
                }
            }
            FUNC8(_prefix);
        }
    break;
    default:
        FUNC1(stderr,"Unknown reply type: %d\n", r->type);
        FUNC0(1);
    }
    return out;
}