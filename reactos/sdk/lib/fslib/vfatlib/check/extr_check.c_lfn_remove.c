
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ off_t ;
typedef int empty ;
struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ DIR_ENT ;


 int DELETED_FLAG ;
 int fs_write (scalar_t__,int,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void lfn_remove(off_t from, off_t to)
{
    DIR_ENT empty;





    memset(&empty, 0, sizeof(empty));
    empty.name[0] = DELETED_FLAG;

    for (; from < to; from += sizeof(empty)) {
 fs_write(from, sizeof(DIR_ENT), &empty);
    }
}
