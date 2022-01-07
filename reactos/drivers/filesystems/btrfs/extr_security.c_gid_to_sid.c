
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int revision; int elements; int* auth; int* nums; } ;
typedef TYPE_1__ sid_header ;
typedef int UCHAR ;
typedef TYPE_1__* PSID ;


 int ALLOC_TAG ;
 int ERR (char*) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int PagedPool ;

__attribute__((used)) static void gid_to_sid(uint32_t gid, PSID* sid) {
    sid_header* sh;
    UCHAR els;




    els = 2;
    sh = ExAllocatePoolWithTag(PagedPool, sizeof(sid_header) + ((els - 1) * sizeof(uint32_t)), ALLOC_TAG);
    if (!sh) {
        ERR("out of memory\n");
        *sid = ((void*)0);
        return;
    }

    sh->revision = 1;
    sh->elements = els;

    sh->auth[0] = 0;
    sh->auth[1] = 0;
    sh->auth[2] = 0;
    sh->auth[3] = 0;
    sh->auth[4] = 0;
    sh->auth[5] = 22;

    sh->nums[0] = 2;
    sh->nums[1] = gid;

    *sid = sh;
}
