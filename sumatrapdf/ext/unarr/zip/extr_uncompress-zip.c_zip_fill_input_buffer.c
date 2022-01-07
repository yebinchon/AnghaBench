
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int offset; int bytes_left; int at_eof; int * data; } ;
struct ar_archive_zip_uncomp {TYPE_2__ input; } ;
struct TYPE_8__ {size_t data_left; } ;
struct TYPE_6__ {int stream; } ;
struct TYPE_9__ {TYPE_3__ progress; TYPE_1__ super; struct ar_archive_zip_uncomp uncomp; } ;
typedef TYPE_4__ ar_archive_zip ;


 size_t ar_read (int ,int *,size_t) ;
 int memmove (int *,int *,int) ;
 int warn (char*) ;

__attribute__((used)) static bool zip_fill_input_buffer(ar_archive_zip *zip)
{
    struct ar_archive_zip_uncomp *uncomp = &zip->uncomp;
    size_t count;

    if (uncomp->input.offset) {
        memmove(&uncomp->input.data[0], &uncomp->input.data[uncomp->input.offset], uncomp->input.bytes_left);
        uncomp->input.offset = 0;
    }
    count = sizeof(uncomp->input.data) - uncomp->input.bytes_left;
    if (count > zip->progress.data_left)
        count = zip->progress.data_left;
    if (ar_read(zip->super.stream, &uncomp->input.data[uncomp->input.bytes_left], count) != count) {
        warn("Unexpected EOF during decompression (invalid data size?)");
        return 0;
    }
    zip->progress.data_left -= count;
    uncomp->input.bytes_left += (uint16_t)count;
    uncomp->input.at_eof = !zip->progress.data_left;

    return 1;
}
