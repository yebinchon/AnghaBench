#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_read; TYPE_2__* p_sys; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_8__ {void* opaque; void* zfree; void* zalloc; scalar_t__ avail_in; int /*<<< orphan*/  next_in; } ;
struct TYPE_7__ {int eof; TYPE_4__ zstream; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Read ; 
 int /*<<< orphan*/  Seek ; 
 int FUNC0 (int const*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int Z_MEM_ERROR ; 
 void* Z_NULL ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_4__*,int) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int const*,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int const**,int) ; 

__attribute__((used)) static int FUNC7(vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    const uint8_t *peek;
    int bits;

    /* See IETF RFC6713 */
    if (FUNC6(stream->s, &peek, 2) < 2)
        return VLC_EGENERIC;

    if ((peek[0] & 0xF) == 8 && (peek[0] >> 4) < 8 && (FUNC0(peek) % 31) == 0)
        bits = 15; /* zlib */
    else
    if (!FUNC4(peek, "\x1F\x8B", 2))
        bits = 15 + 32; /* gzip */
    else
        return VLC_EGENERIC;

    stream_sys_t *sys = FUNC3(sizeof (*sys));
    if (FUNC5(sys == NULL))
        return VLC_ENOMEM;

    sys->zstream.next_in = sys->buffer;
    sys->zstream.avail_in = 0;
    sys->zstream.zalloc = Z_NULL;
    sys->zstream.zfree = Z_NULL;
    sys->zstream.opaque = Z_NULL;
    sys->eof = false;

    int ret = FUNC2(&sys->zstream, bits);
    if (ret != Z_OK)
    {
        FUNC1(sys);
        return (ret == Z_MEM_ERROR) ? VLC_ENOMEM : VLC_EGENERIC;
    }

    stream->p_sys = sys;
    stream->pf_read = Read;
    stream->pf_seek = Seek;
    stream->pf_control = Control;
    return VLC_SUCCESS;
}