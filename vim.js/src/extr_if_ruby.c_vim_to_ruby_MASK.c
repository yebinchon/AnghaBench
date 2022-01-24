#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* v_dict; TYPE_5__* v_list; int /*<<< orphan*/  v_float; int /*<<< orphan*/  v_number; int /*<<< orphan*/ * v_string; } ;
struct TYPE_15__ {scalar_t__ v_type; TYPE_2__ vval; } ;
typedef  TYPE_3__ typval_T ;
typedef  scalar_t__ long_u ;
struct TYPE_16__ {TYPE_3__ li_tv; struct TYPE_16__* li_next; } ;
typedef  TYPE_4__ listitem_T ;
struct TYPE_17__ {TYPE_4__* lv_first; } ;
typedef  TYPE_5__ list_T ;
struct TYPE_18__ {scalar_t__ ht_used; TYPE_7__* ht_array; } ;
typedef  TYPE_6__ hashtab_T ;
struct TYPE_19__ {scalar_t__ hi_key; } ;
typedef  TYPE_7__ hashitem_T ;
struct TYPE_20__ {TYPE_3__ di_tv; } ;
typedef  TYPE_8__ dictitem_T ;
typedef  void* VALUE ;
struct TYPE_13__ {TYPE_6__ dv_hashtab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* Qnil ; 
 scalar_t__ VAR_DICT ; 
 scalar_t__ VAR_FLOAT ; 
 scalar_t__ VAR_LIST ; 
 scalar_t__ VAR_NUMBER ; 
 scalar_t__ VAR_STRING ; 
 TYPE_8__* FUNC2 (TYPE_7__*) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,void*) ; 
 void* FUNC7 () ; 
 void* FUNC8 (char*) ; 

__attribute__((used)) static VALUE FUNC9(typval_T *tv)
{
    VALUE result = Qnil;

    if (tv->v_type == VAR_STRING)
    {
	result = FUNC8(tv->vval.v_string == NULL
					  ? "" : (char *)(tv->vval.v_string));
    }
    else if (tv->v_type == VAR_NUMBER)
    {
	result = FUNC1(tv->vval.v_number);
    }
# ifdef FEAT_FLOAT
    else if (tv->v_type == VAR_FLOAT)
    {
	result = rb_float_new(tv->vval.v_float);
    }
# endif
    else if (tv->v_type == VAR_LIST)
    {
	list_T      *list = tv->vval.v_list;
	listitem_T  *curr;

	result = FUNC3();

	if (list != NULL)
	{
	    for (curr = list->lv_first; curr != NULL; curr = curr->li_next)
	    {
		FUNC4(result, FUNC9(&curr->li_tv));
	    }
	}
    }
    else if (tv->v_type == VAR_DICT)
    {
	result = FUNC7();

	if (tv->vval.v_dict != NULL)
	{
	    hashtab_T   *ht = &tv->vval.v_dict->dv_hashtab;
	    long_u      todo = ht->ht_used;
	    hashitem_T  *hi;
	    dictitem_T  *di;

	    for (hi = ht->ht_array; todo > 0; ++hi)
	    {
		if (!FUNC0(hi))
		{
		    --todo;

		    di = FUNC2(hi);
		    FUNC6(result, FUNC8((char *)hi->hi_key),
						     FUNC9(&di->di_tv));
		}
	    }
	}
    } /* else return Qnil; */

    return result;
}