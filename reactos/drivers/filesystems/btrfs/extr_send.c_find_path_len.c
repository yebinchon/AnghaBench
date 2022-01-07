
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {scalar_t__ namelen; struct TYPE_3__* parent; } ;
typedef TYPE_1__ send_dir ;



__attribute__((used)) static __inline uint16_t find_path_len(send_dir* parent, uint16_t namelen) {
    uint16_t len = namelen;

    while (parent && parent->namelen > 0) {
        len += parent->namelen + 1;
        parent = parent->parent;
    }

    return len;
}
