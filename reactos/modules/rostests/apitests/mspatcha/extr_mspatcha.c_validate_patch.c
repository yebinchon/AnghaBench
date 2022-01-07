
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int len; int data; } ;
struct TYPE_5__ {int len; int data; } ;
struct TYPE_7__ {int name; TYPE_2__ patch_header; TYPE_1__ patch; } ;
typedef TYPE_3__ patch_data ;
typedef scalar_t__ UINT ;


 scalar_t__ crc32 (int ,int ,int ) ;
 int ok (int,char*,scalar_t__,int ) ;

__attribute__((used)) static void validate_patch(patch_data* current)
{
    UINT crc;

    crc = crc32(~0, current->patch.data, current->patch.len);
    ok(crc == 0, "Invalid patch crc 0x%x for %s\n", crc, current->name);

    crc = crc32(~0, current->patch_header.data, current->patch_header.len);
    ok(crc == 0, "Invalid patch_header crc 0x%x for %s\n", crc, current->name);
}
