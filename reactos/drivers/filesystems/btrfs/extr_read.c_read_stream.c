
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ Length; int Buffer; } ;
struct TYPE_5__ {TYPE_1__ adsdata; } ;
typedef TYPE_2__ fcb ;
typedef scalar_t__ ULONG ;
typedef int NTSTATUS ;


 int RtlCopyMemory (int *,int ,scalar_t__) ;
 int STATUS_END_OF_FILE ;
 int STATUS_SUCCESS ;
 int TRACE (char*,...) ;
 int WARN (char*) ;

NTSTATUS read_stream(fcb* fcb, uint8_t* data, uint64_t start, ULONG length, ULONG* pbr) {
    ULONG readlen;

    TRACE("(%p, %p, %I64x, %I64x, %p)\n", fcb, data, start, length, pbr);

    if (pbr) *pbr = 0;

    if (start >= fcb->adsdata.Length) {
        TRACE("tried to read beyond end of stream\n");
        return STATUS_END_OF_FILE;
    }

    if (length == 0) {
        WARN("tried to read zero bytes\n");
        return STATUS_SUCCESS;
    }

    if (start + length < fcb->adsdata.Length)
        readlen = length;
    else
        readlen = fcb->adsdata.Length - (ULONG)start;

    if (readlen > 0)
        RtlCopyMemory(data + start, fcb->adsdata.Buffer, readlen);

    if (pbr) *pbr = readlen;

    return STATUS_SUCCESS;
}
