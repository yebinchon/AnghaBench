#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * xmlURIPtr ;
struct TYPE_4__ {char* path; } ;
typedef  TYPE_1__ xmlURI ;
typedef  char xmlChar ;
typedef  int /*<<< orphan*/  temp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 char* FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (char const*) ; 

xmlChar *
FUNC7(const xmlChar *path)
{
    xmlURIPtr uri;
    xmlURI temp;
    xmlChar *ret, *cal;

    if (path == NULL)
        return(NULL);

    if ((uri = FUNC4((const char *) path)) != NULL) {
	FUNC3(uri);
	return FUNC6(path);
    }
    cal = FUNC1(path);
    if (cal == NULL)
        return(NULL);
#if defined(_WIN32) && !defined(__CYGWIN__)
    /* xmlCanonicPath can return an URI on Windows (is that the intended behaviour?)
       If 'cal' is a valid URI allready then we are done here, as continuing would make
       it invalid. */
    if ((uri = xmlParseURI((const char *) cal)) != NULL) {
	xmlFreeURI(uri);
	return cal;
    }
    /* 'cal' can contain a relative path with backslashes. If that is processed
       by xmlSaveURI, they will be escaped and the external entity loader machinery
       will fail. So convert them to slashes. Misuse 'ret' for walking. */
    ret = cal;
    while (*ret != '\0') {
	if (*ret == '\\')
	    *ret = '/';
	ret++;
    }
#endif
    FUNC0(&temp, 0, sizeof(temp));
    temp.path = (char *) cal;
    ret = FUNC5(&temp);
    FUNC2(cal);
    return(ret);
}