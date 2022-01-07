
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
typedef TYPE_1__ WMSFT_SegContents ;
struct TYPE_6__ {int offset; int res08; int res0c; scalar_t__ length; } ;
typedef TYPE_2__ MSFT_pSeg ;
typedef int DWORD ;



__attribute__((used)) static void tmp_fill_segdir_seg(MSFT_pSeg *segdir, WMSFT_SegContents *contents, DWORD *running_offset)
{
    if(contents && contents->len){
        segdir->offset = *running_offset;
        segdir->length = contents->len;
        *running_offset += segdir->length;
    }else{
        segdir->offset = -1;
        segdir->length = 0;
    }


    segdir->res08 = -1;
    segdir->res0c = 0xf;
}
