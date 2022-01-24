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
struct TYPE_4__ {int indent; void* text; void* newline; int /*<<< orphan*/ * props; } ;
typedef  TYPE_1__ mxwriter ;
typedef  char WCHAR ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 void* FALSE ; 
 size_t MXWriter_Indent ; 
 char const* crlfW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int) ; 

__attribute__((used)) static void FUNC2(mxwriter *writer)
{
    static const WCHAR tabW[] = {'\t'};
    int indent = writer->indent;

    if (!writer->props[MXWriter_Indent] || writer->text)
    {
        writer->text = FALSE;
        return;
    }

    /* This is to workaround PI output logic that always puts newline chars,
       document prolog PI does that too. */
    if (!writer->newline)
        FUNC1(writer, crlfW, FUNC0(crlfW));
    while (indent--)
        FUNC1(writer, tabW, 1);

    writer->newline = FALSE;
    writer->text = FALSE;
}