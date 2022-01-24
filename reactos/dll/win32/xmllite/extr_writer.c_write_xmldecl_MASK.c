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
struct TYPE_4__ {int /*<<< orphan*/  output; scalar_t__ omitxmldecl; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ xmlwriter ;
typedef  scalar_t__ XmlStandalone ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ XmlStandalone_Omit ; 
 scalar_t__ XmlStandalone_Yes ; 
 int /*<<< orphan*/  XmlWriterState_DocStarted ; 
 char const* closepiW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC5(xmlwriter *writer, XmlStandalone standalone)
{
    static const WCHAR versionW[] = {'<','?','x','m','l',' ','v','e','r','s','i','o','n','=','"','1','.','0','"'};
    static const WCHAR encodingW[] = {' ','e','n','c','o','d','i','n','g','='};

    FUNC2(writer);
    writer->state = XmlWriterState_DocStarted;
    if (writer->omitxmldecl) return S_OK;

    /* version */
    FUNC3(writer->output, versionW, FUNC0(versionW));

    /* encoding */
    FUNC3(writer->output, encodingW, FUNC0(encodingW));
    FUNC4(writer->output, FUNC1(writer->output), -1);

    /* standalone */
    if (standalone == XmlStandalone_Omit)
        FUNC3(writer->output, closepiW, FUNC0(closepiW));
    else {
        static const WCHAR standaloneW[] = {' ','s','t','a','n','d','a','l','o','n','e','=','\"'};
        static const WCHAR yesW[] = {'y','e','s','\"','?','>'};
        static const WCHAR noW[] = {'n','o','\"','?','>'};

        FUNC3(writer->output, standaloneW, FUNC0(standaloneW));
        if (standalone == XmlStandalone_Yes)
            FUNC3(writer->output, yesW, FUNC0(yesW));
        else
            FUNC3(writer->output, noW, FUNC0(noW));
    }

    return S_OK;
}