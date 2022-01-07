
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int destination; } ;
typedef TYPE_1__ CustomMount ;


 int CMP (int ,int ) ;
 int path_compare (int ,int ) ;

__attribute__((used)) static int custom_mount_compare(const CustomMount *a, const CustomMount *b) {
        int r;

        r = path_compare(a->destination, b->destination);
        if (r != 0)
                return r;

        return CMP(a->type, b->type);
}
