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
typedef  int /*<<< orphan*/  pdf_token ;

/* Variables and functions */
 int /*<<< orphan*/  PDF_TOK_ENDOBJ ; 
 int /*<<< orphan*/  PDF_TOK_ENDSTREAM ; 
 int /*<<< orphan*/  PDF_TOK_ERROR ; 
 int /*<<< orphan*/  PDF_TOK_FALSE ; 
 int /*<<< orphan*/  PDF_TOK_KEYWORD ; 
 int /*<<< orphan*/  PDF_TOK_NULL ; 
 int /*<<< orphan*/  PDF_TOK_OBJ ; 
 int /*<<< orphan*/  PDF_TOK_R ; 
 int /*<<< orphan*/  PDF_TOK_STARTXREF ; 
 int /*<<< orphan*/  PDF_TOK_STREAM ; 
 int /*<<< orphan*/  PDF_TOK_TRAILER ; 
 int /*<<< orphan*/  PDF_TOK_TRUE ; 
 int /*<<< orphan*/  PDF_TOK_XREF ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static pdf_token
FUNC2(char *key)
{
	switch (*key)
	{
	case 'R':
		if (!FUNC1(key, "R")) return PDF_TOK_R;
		break;
	case 't':
		if (!FUNC1(key, "true")) return PDF_TOK_TRUE;
		if (!FUNC1(key, "trailer")) return PDF_TOK_TRAILER;
		break;
	case 'f':
		if (!FUNC1(key, "false")) return PDF_TOK_FALSE;
		break;
	case 'n':
		if (!FUNC1(key, "null")) return PDF_TOK_NULL;
		break;
	case 'o':
		if (!FUNC1(key, "obj")) return PDF_TOK_OBJ;
		break;
	case 'e':
		if (!FUNC1(key, "endobj")) return PDF_TOK_ENDOBJ;
		if (!FUNC1(key, "endstream")) return PDF_TOK_ENDSTREAM;
		break;
	case 's':
		if (!FUNC1(key, "stream")) return PDF_TOK_STREAM;
		if (!FUNC1(key, "startxref")) return PDF_TOK_STARTXREF;
		break;
	case 'x':
		if (!FUNC1(key, "xref")) return PDF_TOK_XREF;
		break;
	}

	while (*key)
	{
		if (!FUNC0(*key))
			return PDF_TOK_ERROR;
		++key;
	}

	return PDF_TOK_KEYWORD;
}