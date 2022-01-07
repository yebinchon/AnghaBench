
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ bin_file ;
typedef int BOOL ;


 int extract2 (char*,int ,int ) ;

BOOL extract(char* filename, const bin_file* bin)
{
    return extract2(filename, bin->data, bin->len);
}
