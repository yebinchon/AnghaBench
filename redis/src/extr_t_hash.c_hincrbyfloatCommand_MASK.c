#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_14__ {TYPE_2__* db; TYPE_3__** argv; } ;
typedef  TYPE_1__ client ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_17__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_16__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  HASH_SET_TAKE_VALUE ; 
 int /*<<< orphan*/  LD_STR_HUMAN ; 
 int MAX_LONG_DOUBLE_CHARS ; 
 int /*<<< orphan*/  NOTIFY_HASH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_3__*,long double*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char**,unsigned int*,long long*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (long double) ; 
 scalar_t__ FUNC10 (long double) ; 
 int FUNC11 (char*,int,long double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC16 (char*,unsigned int,long double*) ; 

void FUNC17(client *c) {
    long double value, incr;
    long long ll;
    robj *o;
    sds new;
    unsigned char *vstr;
    unsigned int vlen;

    if (FUNC5(c,c->argv[3],&incr,NULL) != C_OK) return;
    if ((o = FUNC7(c,c->argv[1])) == NULL) return;
    if (FUNC6(o,c->argv[2]->ptr,&vstr,&vlen,&ll) == C_OK) {
        if (vstr) {
            if (FUNC16((char*)vstr,vlen,&value) == 0) {
                FUNC1(c,"hash value is not a float");
                return;
            }
        } else {
            value = (long double)ll;
        }
    } else {
        value = 0;
    }

    value += incr;
    if (FUNC10(value) || FUNC9(value)) {
        FUNC1(c,"increment would produce NaN or Infinity");
        return;
    }

    char buf[MAX_LONG_DOUBLE_CHARS];
    int len = FUNC11(buf,sizeof(buf),value,LD_STR_HUMAN);
    new = FUNC14(buf,len);
    FUNC8(o,c->argv[2]->ptr,new,HASH_SET_TAKE_VALUE);
    FUNC0(c,buf,len);
    FUNC15(c->db,c->argv[1]);
    FUNC12(NOTIFY_HASH,"hincrbyfloat",c->argv[1],c->db->id);
    server.dirty++;

    /* Always replicate HINCRBYFLOAT as an HSET command with the final value
     * in order to make sure that differences in float pricision or formatting
     * will not create differences in replicas or after an AOF restart. */
    robj *aux, *newobj;
    aux = FUNC3("HSET",4);
    newobj = FUNC2(buf,len);
    FUNC13(c,0,aux);
    FUNC4(aux);
    FUNC13(c,3,newobj);
    FUNC4(newobj);
}