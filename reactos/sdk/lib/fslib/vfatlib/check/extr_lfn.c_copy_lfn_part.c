
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name11_12; int name5_10; int name0_4; } ;
typedef TYPE_1__ LFN_ENT ;


 int memcpy (unsigned char*,int ,int) ;

__attribute__((used)) static void copy_lfn_part(unsigned char *dst, LFN_ENT * lfn)
{
    memcpy(dst, lfn->name0_4, 10);
    memcpy(dst + 10, lfn->name5_10, 12);
    memcpy(dst + 22, lfn->name11_12, 4);
}
