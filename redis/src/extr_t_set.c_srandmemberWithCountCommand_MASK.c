#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  setTypeIterator ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  dict ;
struct TYPE_13__ {size_t resp; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_14__ {int /*<<< orphan*/ * emptyset; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int DICT_ERR ; 
 int DICT_OK ; 
 int OBJ_ENCODING_INTSET ; 
 int /*<<< orphan*/  OBJ_SET ; 
 int /*<<< orphan*/  SET_OP_UNION ; 
 unsigned long SRANDMEMBER_SUB_STRATEGY_MUL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned long) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (TYPE_1__*,int /*<<< orphan*/ ,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  objectKeyPointerValueDictType ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC27 (int /*<<< orphan*/ *) ; 
 TYPE_4__ shared ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC29(client *c) {
    long l;
    unsigned long count, size;
    int uniq = 1;
    robj *set;
    sds ele;
    int64_t llele;
    int encoding;

    dict *d;

    if (FUNC19(c,c->argv[2],&l,NULL) != C_OK) return;
    if (l >= 0) {
        count = (unsigned long) l;
    } else {
        /* A negative count means: return the same elements multiple times
         * (i.e. don't remove the extracted element after every extraction). */
        count = -l;
        uniq = 0;
    }

    if ((set = FUNC20(c,c->argv[1],shared.emptyset[c->resp]))
        == NULL || FUNC5(c,set,OBJ_SET)) return;
    size = FUNC27(set);

    /* If count is zero, serve it ASAP to avoid special cases later. */
    if (count == 0) {
        FUNC0(c,shared.emptyset[c->resp]);
        return;
    }

    /* CASE 1: The count was negative, so the extraction method is just:
     * "return N random elements" sampling the whole set every time.
     * This case is trivial and can be served without auxiliary data
     * structures. */
    if (!uniq) {
        FUNC4(c,count);
        while(count--) {
            encoding = FUNC25(set,&ele,&llele);
            if (encoding == OBJ_ENCODING_INTSET) {
                FUNC3(c,llele);
            } else {
                FUNC2(c,ele,FUNC21(ele));
            }
        }
        return;
    }

    /* CASE 2:
     * The number of requested elements is greater than the number of
     * elements inside the set: simply return the whole set. */
    if (count >= size) {
        FUNC28(c,c->argv+1,1,NULL,SET_OP_UNION);
        return;
    }

    /* For CASE 3 and CASE 4 we need an auxiliary dictionary. */
    d = FUNC10(&objectKeyPointerValueDictType,NULL);

    /* CASE 3:
     * The number of elements inside the set is not greater than
     * SRANDMEMBER_SUB_STRATEGY_MUL times the number of requested elements.
     * In this case we create a set from scratch with all the elements, and
     * subtract random elements to reach the requested number of elements.
     *
     * This is done because if the number of requsted elements is just
     * a bit less than the number of elements in the set, the natural approach
     * used into CASE 3 is highly inefficient. */
    if (count*SRANDMEMBER_SUB_STRATEGY_MUL > size) {
        setTypeIterator *si;

        /* Add all the elements into the temporary dictionary. */
        si = FUNC23(set);
        while((encoding = FUNC24(si,&ele,&llele)) != -1) {
            int retval = DICT_ERR;

            if (encoding == OBJ_ENCODING_INTSET) {
                retval = FUNC9(d,FUNC7(llele),NULL);
            } else {
                retval = FUNC9(d,FUNC6(ele,FUNC21(ele)),NULL);
            }
            FUNC22(retval == DICT_OK);
        }
        FUNC26(si);
        FUNC22(FUNC18(d) == size);

        /* Remove random elements to reach the right count. */
        while(size > count) {
            dictEntry *de;

            de = FUNC14(d);
            FUNC11(d,FUNC13(de));
            size--;
        }
    }

    /* CASE 4: We have a big set compared to the requested number of elements.
     * In this case we can simply get random elements from the set and add
     * to the temporary set, trying to eventually get enough unique elements
     * to reach the specified count. */
    else {
        unsigned long added = 0;
        robj *objele;

        while(added < count) {
            encoding = FUNC25(set,&ele,&llele);
            if (encoding == OBJ_ENCODING_INTSET) {
                objele = FUNC7(llele);
            } else {
                objele = FUNC6(ele,FUNC21(ele));
            }
            /* Try to add the object to the dictionary. If it already exists
             * free it, otherwise increment the number of objects we have
             * in the result dictionary. */
            if (FUNC9(d,objele,NULL) == DICT_OK)
                added++;
            else
                FUNC8(objele);
        }
    }

    /* CASE 3 & 4: send the result to the user. */
    {
        dictIterator *di;
        dictEntry *de;

        FUNC4(c,count);
        di = FUNC12(d);
        while((de = FUNC15(di)) != NULL)
            FUNC1(c,FUNC13(de));
        FUNC17(di);
        FUNC16(d);
    }
}