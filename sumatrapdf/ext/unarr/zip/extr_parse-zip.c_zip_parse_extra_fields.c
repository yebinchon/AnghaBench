
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct zip_entry {scalar_t__ extralen; scalar_t__ uncompressed; scalar_t__ datasize; scalar_t__ header_offset; int disk; int namelen; } ;
typedef scalar_t__ off64_t ;
struct TYPE_4__ {int stream; } ;
struct TYPE_5__ {TYPE_1__ super; } ;
typedef TYPE_2__ ar_archive_zip ;


 int UINT16_MAX ;
 scalar_t__ UINT32_MAX ;
 scalar_t__ ar_read (int ,int *,scalar_t__) ;
 int ar_skip (int ,int ) ;
 int free (int *) ;
 int * malloc (scalar_t__) ;
 int uint16le (int *) ;
 int uint32le (int *) ;
 void* uint64le (int *) ;

__attribute__((used)) static bool zip_parse_extra_fields(ar_archive_zip *zip, struct zip_entry *entry)
{
    uint8_t *extra;
    uint32_t idx;

    if (!entry->extralen)
        return 1;


    if (!ar_skip(zip->super.stream, entry->namelen))
        return 0;
    extra = malloc(entry->extralen);
    if (!extra || ar_read(zip->super.stream, extra, entry->extralen) != entry->extralen) {
        free(extra);
        return 0;
    }
    for (idx = 0; idx + 4 < entry->extralen; idx += 4 + uint16le(&extra[idx + 2])) {
        if (uint16le(&extra[idx]) == 0x0001) {
            uint16_t size = uint16le(&extra[idx + 2]);
            uint16_t offset = 0;
            if (entry->uncompressed == UINT32_MAX && offset + 8 <= size) {
                entry->uncompressed = uint64le(&extra[idx + 4 + offset]);
                offset += 8;
            }
            if (entry->datasize == UINT32_MAX && offset + 8 <= size) {
                entry->datasize = uint64le(&extra[idx + 4 + offset]);
                offset += 8;
            }
            if (entry->header_offset == UINT32_MAX && offset + 8 <= size) {
                entry->header_offset = (off64_t)uint64le(&extra[idx + 4 + offset]);
                offset += 8;
            }
            if (entry->disk == UINT16_MAX && offset + 4 <= size) {
                entry->disk = uint32le(&extra[idx + 4 + offset]);
                offset += 4;
            }
            break;
        }
    }
    free(extra);

    return 1;
}
