
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ root ;



__attribute__((used)) static __inline uint64_t make_file_id(root* r, uint64_t inode) {
    return (r->id << 40) | (inode & 0xffffffffff);
}
