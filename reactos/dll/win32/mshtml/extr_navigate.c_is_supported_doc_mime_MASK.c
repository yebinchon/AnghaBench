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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static BOOL FUNC5(const WCHAR *mime)
{
    char *nscat, *mimea;
    BOOL ret;

    mimea = FUNC2(mime);
    if(!mimea)
        return FALSE;

    nscat = FUNC0("Gecko-Content-Viewers", mimea);

    ret = nscat != NULL && !FUNC4(nscat, "@mozilla.org/content/document-loader-factory;1");

    FUNC1(mimea);
    FUNC3(nscat);
    return ret;
}