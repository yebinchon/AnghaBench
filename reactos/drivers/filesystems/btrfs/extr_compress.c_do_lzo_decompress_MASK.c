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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int error; scalar_t__ outlen; scalar_t__ outpos; } ;
typedef  TYPE_1__ lzo_stream ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_INTERNAL_ERROR ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static NTSTATUS FUNC5(lzo_stream* stream) {
    uint8_t byte;
    uint32_t len, back;
    bool backcopy = false;

    stream->error = false;

    byte = FUNC3(stream);
    if (stream->error) return STATUS_INTERNAL_ERROR;

    if (byte > 17) {
        FUNC0(stream, FUNC4((uint8_t)(byte - 17), (uint32_t)(stream->outlen - stream->outpos)));
        if (stream->error) return STATUS_INTERNAL_ERROR;

        if (stream->outlen == stream->outpos)
            return STATUS_SUCCESS;

        byte = FUNC3(stream);
        if (stream->error) return STATUS_INTERNAL_ERROR;

        if (byte < 16) return STATUS_INTERNAL_ERROR;
    }

    while (1) {
        if (byte >> 4) {
            backcopy = true;
            if (byte >> 6) {
                len = (byte >> 5) - 1;
                back = (FUNC3(stream) << 3) + ((byte >> 2) & 7) + 1;
                if (stream->error) return STATUS_INTERNAL_ERROR;
            } else if (byte >> 5) {
                len = FUNC2(stream, byte, 31);
                if (stream->error) return STATUS_INTERNAL_ERROR;

                byte = FUNC3(stream);
                if (stream->error) return STATUS_INTERNAL_ERROR;

                back = (FUNC3(stream) << 6) + (byte >> 2) + 1;
                if (stream->error) return STATUS_INTERNAL_ERROR;
            } else {
                len = FUNC2(stream, byte, 7);
                if (stream->error) return STATUS_INTERNAL_ERROR;

                back = (1 << 14) + ((byte & 8) << 11);

                byte = FUNC3(stream);
                if (stream->error) return STATUS_INTERNAL_ERROR;

                back += (FUNC3(stream) << 6) + (byte >> 2);
                if (stream->error) return STATUS_INTERNAL_ERROR;

                if (back == (1 << 14)) {
                    if (len != 1)
                        return STATUS_INTERNAL_ERROR;
                    break;
                }
            }
        } else if (backcopy) {
            len = 0;
            back = (FUNC3(stream) << 2) + (byte >> 2) + 1;
            if (stream->error) return STATUS_INTERNAL_ERROR;
        } else {
            len = FUNC2(stream, byte, 15);
            if (stream->error) return STATUS_INTERNAL_ERROR;

            FUNC0(stream, FUNC4(len + 3, stream->outlen - stream->outpos));
            if (stream->error) return STATUS_INTERNAL_ERROR;

            if (stream->outlen == stream->outpos)
                return STATUS_SUCCESS;

            byte = FUNC3(stream);
            if (stream->error) return STATUS_INTERNAL_ERROR;

            if (byte >> 4)
                continue;

            len = 1;
            back = (1 << 11) + (FUNC3(stream) << 2) + (byte >> 2) + 1;
            if (stream->error) return STATUS_INTERNAL_ERROR;

            break;
        }

        FUNC1(stream, back, FUNC4(len + 2, stream->outlen - stream->outpos));
        if (stream->error) return STATUS_INTERNAL_ERROR;

        if (stream->outlen == stream->outpos)
            return STATUS_SUCCESS;

        len = byte & 3;

        if (len) {
            FUNC0(stream, FUNC4(len, stream->outlen - stream->outpos));
            if (stream->error) return STATUS_INTERNAL_ERROR;

            if (stream->outlen == stream->outpos)
                return STATUS_SUCCESS;
        } else
            backcopy = !backcopy;

        byte = FUNC3(stream);
        if (stream->error) return STATUS_INTERNAL_ERROR;
    }

    return STATUS_SUCCESS;
}