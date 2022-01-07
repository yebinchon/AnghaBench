
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Read; } ;
struct ByteReader {int * rar; TYPE_1__ super; } ;
typedef int ar_archive_rar ;


 int ByteIn_Read ;

__attribute__((used)) static void ByteIn_CreateVTable(struct ByteReader *br, ar_archive_rar *rar)
{
    br->super.Read = ByteIn_Read;
    br->rar = rar;
}
