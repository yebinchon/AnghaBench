
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int atts; scalar_t__ ads; } ;
typedef TYPE_4__ fcb ;
struct TYPE_15__ {TYPE_3__* fileref; } ;
typedef TYPE_5__ ccb ;
struct TYPE_16__ {int FileAttributes; scalar_t__ ReparseTag; } ;
struct TYPE_13__ {TYPE_2__* parent; } ;
struct TYPE_12__ {TYPE_1__* fcb; } ;
struct TYPE_11__ {int atts; } ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef TYPE_6__ FILE_ATTRIBUTE_TAG_INFORMATION ;


 int ERR (char*) ;
 int FILE_ATTRIBUTE_REPARSE_POINT ;
 int STATUS_INTERNAL_ERROR ;
 int STATUS_SUCCESS ;
 scalar_t__ get_reparse_tag_fcb (TYPE_4__*) ;

__attribute__((used)) static NTSTATUS fill_in_file_attribute_information(FILE_ATTRIBUTE_TAG_INFORMATION* ati, fcb* fcb, ccb* ccb, LONG* length) {
    *length -= sizeof(FILE_ATTRIBUTE_TAG_INFORMATION);

    if (fcb->ads) {
        if (!ccb->fileref || !ccb->fileref->parent) {
            ERR("no fileref for stream\n");
            return STATUS_INTERNAL_ERROR;
        }

        ati->FileAttributes = ccb->fileref->parent->fcb->atts;
    } else
        ati->FileAttributes = fcb->atts;

    if (!(ati->FileAttributes & FILE_ATTRIBUTE_REPARSE_POINT))
        ati->ReparseTag = 0;
    else
        ati->ReparseTag = get_reparse_tag_fcb(fcb);

    return STATUS_SUCCESS;
}
