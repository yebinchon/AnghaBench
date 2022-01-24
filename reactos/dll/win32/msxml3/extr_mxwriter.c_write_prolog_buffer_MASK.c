#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* encoding; scalar_t__* props; int /*<<< orphan*/  newline; scalar_t__ dest; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ mxwriter ;
typedef  char WCHAR ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 size_t MXWriter_Standalone ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ VARIANT_TRUE ; 
 char const* crlfW ; 
 char const* quotW ; 
 char const* utf16W ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(mxwriter *writer)
{
    static const WCHAR versionW[] = {'<','?','x','m','l',' ','v','e','r','s','i','o','n','='};
    static const WCHAR encodingW[] = {' ','e','n','c','o','d','i','n','g','=','\"'};
    static const WCHAR standaloneW[] = {' ','s','t','a','n','d','a','l','o','n','e','=','\"'};
    static const WCHAR yesW[] = {'y','e','s','\"','?','>'};
    static const WCHAR noW[] = {'n','o','\"','?','>'};

    /* version */
    FUNC1(writer, versionW, FUNC0(versionW));
    FUNC2(writer, writer->version, -1);

    /* encoding */
    FUNC1(writer, encodingW, FUNC0(encodingW));

    if (writer->dest)
        FUNC1(writer, writer->encoding, -1);
    else
        FUNC1(writer, utf16W, FUNC0(utf16W) - 1);
    FUNC1(writer, quotW, 1);

    /* standalone */
    FUNC1(writer, standaloneW, FUNC0(standaloneW));
    if (writer->props[MXWriter_Standalone] == VARIANT_TRUE)
        FUNC1(writer, yesW, FUNC0(yesW));
    else
        FUNC1(writer, noW, FUNC0(noW));

    FUNC1(writer, crlfW, FUNC0(crlfW));
    writer->newline = TRUE;
}