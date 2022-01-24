#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * p_module; int /*<<< orphan*/ * p_stream; } ;
typedef  TYPE_1__ xml_reader_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

xml_reader_t *FUNC5(vlc_object_t *obj, stream_t *stream)
{
    xml_reader_t *reader;

    reader = FUNC3(obj, sizeof(*reader), "xml reader");

    reader->p_stream = stream;
    reader->p_module = FUNC0(reader, "xml reader", NULL, false);
    if (FUNC2(reader->p_module == NULL))
    {
        FUNC1(reader, "XML reader not found");
        FUNC4(reader);
        return NULL;
    }
    return reader;
}