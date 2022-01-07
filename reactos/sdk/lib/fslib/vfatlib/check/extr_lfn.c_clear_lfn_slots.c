
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int empty ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ LFN_ENT ;


 int DELETED_FLAG ;
 int fs_write (int ,int,TYPE_1__*) ;
 int * lfn_offsets ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void clear_lfn_slots(int start, int end)
{
    int i;
    LFN_ENT empty;





    memset(&empty, 0, sizeof(empty));
    empty.id = DELETED_FLAG;

    for (i = start; i <= end; ++i) {
 fs_write(lfn_offsets[i], sizeof(LFN_ENT), &empty);
    }
}
