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
struct TYPE_4__ {int /*<<< orphan*/  fmt; scalar_t__ decoder; } ;
typedef  TYPE_1__ es_out_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(es_out_id_t *id)
{
#ifdef HAVE_DECODERS
    if (id->decoder)
    {
        /* Drain */
        test_decoder_process(id->decoder, NULL);
        test_decoder_destroy(id->decoder);
        es_format_Clean(&id->fmt);
    }
#endif
    FUNC1(id);
}