#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  v_type; scalar_t__ v_lock; } ;
typedef  TYPE_1__ typval_T ;
typedef  int /*<<< orphan*/  hashitem_T ;
struct TYPE_18__ {TYPE_1__ di_tv; int /*<<< orphan*/  di_key; } ;
typedef  TYPE_2__ dictitem_T ;
struct TYPE_19__ {int /*<<< orphan*/  dv_hashtab; scalar_t__ dv_lock; } ;
typedef  TYPE_3__ dict_T ;
typedef  scalar_t__ char_u ;
struct TYPE_20__ {TYPE_3__* dict; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int PyInt ;
typedef  TYPE_4__ DictionaryObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FAIL ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyExc_KeyError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  RAISE_LOCKED_DICTIONARY ; 
 int /*<<< orphan*/  RAISE_NO_EMPTY_KEYS ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  VAR_UNKNOWN ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,scalar_t__*,int) ; 
 TYPE_2__* FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 

__attribute__((used)) static PyInt
FUNC15(
	DictionaryObject *self, PyObject *keyObject, PyObject *valObject)
{
    char_u	*key;
    typval_T	tv;
    dict_T	*dict = self->dict;
    dictitem_T	*di;
    PyObject	*todecref;

    if (dict->dv_lock)
    {
	RAISE_LOCKED_DICTIONARY;
	return -1;
    }

    if (!(key = FUNC5(keyObject, &todecref)))
	return -1;

    if (*key == NUL)
    {
	RAISE_NO_EMPTY_KEYS;
	FUNC3(todecref);
	return -1;
    }

    di = FUNC9(dict, key, -1);

    if (valObject == NULL)
    {
	hashitem_T	*hi;

	if (di == NULL)
	{
	    FUNC3(todecref);
	    FUNC2(PyExc_KeyError, keyObject);
	    return -1;
	}
	hi = FUNC12(&dict->dv_hashtab, di->di_key);
	FUNC13(&dict->dv_hashtab, hi);
	FUNC11(di);
	FUNC3(todecref);
	return 0;
    }

    if (FUNC0(valObject, &tv) == -1)
    {
	FUNC3(todecref);
	return -1;
    }

    if (di == NULL)
    {
	if (!(di = FUNC10(key)))
	{
	    FUNC3(todecref);
	    FUNC1();
	    return -1;
	}
	di->di_tv.v_lock = 0;
	di->di_tv.v_type = VAR_UNKNOWN;

	if (FUNC8(dict, di) == FAIL)
	{
	    FUNC14(di);
	    FUNC11(di);
	    FUNC4(key);
	    FUNC3(todecref);
	    return -1;
	}
    }
    else
	FUNC6(&di->di_tv);

    FUNC3(todecref);

    FUNC7(&tv, &di->di_tv);
    FUNC6(&tv);
    return 0;
}