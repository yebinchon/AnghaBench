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
typedef  int /*<<< orphan*/  xmlreader ;
typedef  scalar_t__ xml_encoding ;
struct TYPE_3__ {char* str; int len; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ strval ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WC_E_ENCNAME ; 
 scalar_t__ XmlEncoding_Unknown ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC7(xmlreader *reader, strval *val)
{
    WCHAR *start = FUNC5(reader), *ptr;
    xml_encoding enc;
    int len;

    if ((*start < 'A' || *start > 'Z') && (*start < 'a' || *start > 'z'))
        return WC_E_ENCNAME;

    val->start = FUNC4(reader);

    ptr = start;
    while (FUNC2(*++ptr))
        ;

    len = ptr - start;
    enc = FUNC3(start, len);
    FUNC0("encoding name %s\n", FUNC1(start, len));
    val->str = start;
    val->len = len;

    if (enc == XmlEncoding_Unknown)
        return WC_E_ENCNAME;

    /* skip encoding name */
    FUNC6(reader, len);
    return S_OK;
}