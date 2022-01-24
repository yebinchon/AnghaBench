#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* input; } ;
typedef  TYPE_3__ xmlreader ;
struct TYPE_11__ {int /*<<< orphan*/  cur; } ;
typedef  TYPE_4__ encoded_buffer ;
typedef  scalar_t__ WCHAR ;
struct TYPE_9__ {TYPE_1__* buffer; } ;
struct TYPE_8__ {TYPE_4__ utf16; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__ const) ; 

__attribute__((used)) static void FUNC2(xmlreader *reader, int n)
{
    encoded_buffer *buffer = &reader->input->buffer->utf16;
    const WCHAR *ptr;

    while (*(ptr = FUNC0(reader)) && n--)
    {
        FUNC1(reader, *ptr);
        buffer->cur++;
    }
}