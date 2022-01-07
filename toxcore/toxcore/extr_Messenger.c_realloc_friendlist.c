
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * friendlist; } ;
typedef TYPE_1__ Messenger ;
typedef int Friend ;


 int free (int *) ;
 int * realloc (int *,int) ;

int realloc_friendlist(Messenger *m, uint32_t num)
{
    if (num == 0) {
        free(m->friendlist);
        m->friendlist = ((void*)0);
        return 0;
    }

    Friend *newfriendlist = realloc(m->friendlist, num * sizeof(Friend));

    if (newfriendlist == ((void*)0))
        return -1;

    m->friendlist = newfriendlist;
    return 0;
}
