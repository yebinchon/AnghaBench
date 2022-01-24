#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int indent_level; scalar_t__ state; TYPE_3__* output; int /*<<< orphan*/  indent; } ;
typedef  TYPE_2__ xmlwriter ;
typedef  char WCHAR ;
struct TYPE_5__ {scalar_t__ written; } ;
struct TYPE_7__ {TYPE_1__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ XmlWriterState_Ready ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(xmlwriter *writer)
{
    static const WCHAR dblspaceW[] = {' ',' '};
    static const WCHAR crlfW[] = {'\r','\n'};
    unsigned int indent_level = writer->indent_level;

    if (!writer->indent)
        return;

    /* Do state check to prevent newline inserted after BOM. It is assumed that
       state does not change between writing BOM and inserting indentation. */
    if (writer->output->buffer.written && writer->state != XmlWriterState_Ready)
        FUNC1(writer->output, crlfW, FUNC0(crlfW));
    while (indent_level--)
        FUNC1(writer->output, dblspaceW, FUNC0(dblspaceW));
}