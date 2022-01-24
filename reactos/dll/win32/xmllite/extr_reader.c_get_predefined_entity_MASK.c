#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xmlreader ;
struct TYPE_6__ {char* member_0; int member_1; } ;
typedef  TYPE_1__ strval ;
typedef  char WCHAR ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,TYPE_1__ const*,TYPE_1__ const*) ; 

__attribute__((used)) static WCHAR FUNC2(const xmlreader *reader, const strval *name)
{
    static const WCHAR entltW[]   = {'l','t'};
    static const WCHAR entgtW[]   = {'g','t'};
    static const WCHAR entampW[]  = {'a','m','p'};
    static const WCHAR entaposW[] = {'a','p','o','s'};
    static const WCHAR entquotW[] = {'q','u','o','t'};
    static const strval lt   = { (WCHAR*)entltW,   2 };
    static const strval gt   = { (WCHAR*)entgtW,   2 };
    static const strval amp  = { (WCHAR*)entampW,  3 };
    static const strval apos = { (WCHAR*)entaposW, 4 };
    static const strval quot = { (WCHAR*)entquotW, 4 };
    WCHAR *str = FUNC0(reader, name);

    switch (*str)
    {
    case 'l':
        if (FUNC1(reader, name, &lt)) return '<';
        break;
    case 'g':
        if (FUNC1(reader, name, &gt)) return '>';
        break;
    case 'a':
        if (FUNC1(reader, name, &amp))
            return '&';
        else if (FUNC1(reader, name, &apos))
            return '\'';
        break;
    case 'q':
        if (FUNC1(reader, name, &quot)) return '\"';
        break;
    default:
        ;
    }

    return 0;
}