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
typedef  int /*<<< orphan*/  xmlwriter ;
struct element {int len; scalar_t__* qname; } ;
typedef  char WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,char const*) ; 
 int FUNC2 (char const*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct element *FUNC4(xmlwriter *writer, const WCHAR *prefix, const WCHAR *local)
{
    struct element *ret;
    int len;

    ret = FUNC3(writer, sizeof(*ret));
    if (!ret) return ret;

    len = prefix ? FUNC2(prefix) + 1 /* ':' */ : 0;
    len += FUNC2(local);

    ret->qname = FUNC3(writer, (len + 1)*sizeof(WCHAR));
    ret->len = len;
    if (prefix) {
        static const WCHAR colonW[] = {':',0};
        FUNC1(ret->qname, prefix);
        FUNC0(ret->qname, colonW);
    }
    else
        ret->qname[0] = 0;
    FUNC0(ret->qname, local);

    return ret;
}