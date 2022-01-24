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
struct TYPE_6__ {int c; int* bp; int ct; int a; scalar_t__ end_of_byte_stream_counter; } ;
typedef  TYPE_1__ opj_mqc_t ;
typedef  int OPJ_UINT32 ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC3(opj_mqc_t *mqc, OPJ_BYTE *bp, OPJ_UINT32 len,
                      OPJ_UINT32 extra_writable_bytes)
{
    /* Implements ISO 15444-1 C.3.5 Initialization of the decoder (INITDEC) */
    /* Note: alternate "J.1 - Initialization of the software-conventions */
    /* decoder" has been tried, but does */
    /* not bring any improvement. */
    /* See https://github.com/uclouvain/openjpeg/issues/921 */
    FUNC1(mqc, bp, len, extra_writable_bytes);
    FUNC2(mqc, 0);
    mqc->end_of_byte_stream_counter = 0;
    if (len == 0) {
        mqc->c = 0xff << 16;
    } else {
        mqc->c = (OPJ_UINT32)(*mqc->bp << 16);
    }

    FUNC0(mqc);
    mqc->c <<= 7;
    mqc->ct -= 7;
    mqc->a = 0x8000;
}