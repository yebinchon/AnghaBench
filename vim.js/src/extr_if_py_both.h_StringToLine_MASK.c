#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int PyInt ;

/* Variables and functions */
 int /*<<< orphan*/  ENC_OPT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char**,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 char* FUNC12 (char*,char,int) ; 

__attribute__((used)) static char *
FUNC13(PyObject *obj)
{
    char	*str;
    char	*save;
    PyObject	*bytes = NULL;
    Py_ssize_t	len = 0;
    PyInt	i;
    char	*p;

    if (FUNC2(obj))
    {
	if (FUNC1(obj, &str, &len) == -1
		|| str == NULL)
	    return NULL;
    }
    else if (FUNC7(obj))
    {
	if (!(bytes = FUNC6(obj, ENC_OPT, NULL)))
	    return NULL;

	if (FUNC1(bytes, &str, &len) == -1
		|| str == NULL)
	{
	    FUNC8(bytes);
	    return NULL;
	}
    }
    else
    {
#if PY_MAJOR_VERSION < 3
	FUNC3(PyExc_TypeError,
		FUNC0("expected str() or unicode() instance, but got %s"),
		FUNC9(obj));
#else
	PyErr_FORMAT(PyExc_TypeError,
		N_("expected bytes() or str() instance, but got %s"),
		Py_TYPE_NAME(obj));
#endif
	return NULL;
    }

    /*
     * Error checking: String must not contain newlines, as we
     * are replacing a single line, and we must replace it with
     * a single line.
     * A trailing newline is removed, so that append(f.readlines()) works.
     */
    p = FUNC12(str, '\n', len);
    if (p != NULL)
    {
	if (p == str + len - 1)
	    --len;
	else
	{
	    FUNC5(FUNC0("string cannot contain newlines"));
	    FUNC10(bytes);
	    return NULL;
	}
    }

    /* Create a copy of the string, with internal nulls replaced by
     * newline characters, as is the vim convention.
     */
    save = (char *)FUNC11((unsigned)(len+1));
    if (save == NULL)
    {
	FUNC4();
	FUNC10(bytes);
	return NULL;
    }

    for (i = 0; i < len; ++i)
    {
	if (str[i] == '\0')
	    save[i] = '\n';
	else
	    save[i] = str[i];
    }

    save[i] = '\0';
    FUNC10(bytes);  /* Python 2 does nothing here */

    return save;
}