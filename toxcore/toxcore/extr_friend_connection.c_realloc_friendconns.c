
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * conns; } ;
typedef TYPE_1__ Friend_Connections ;
typedef int Friend_Conn ;


 int free (int *) ;
 int * realloc (int *,int) ;

__attribute__((used)) static int realloc_friendconns(Friend_Connections *fr_c, uint32_t num)
{
    if (num == 0) {
        free(fr_c->conns);
        fr_c->conns = ((void*)0);
        return 0;
    }

    Friend_Conn *newgroup_cons = realloc(fr_c->conns, num * sizeof(Friend_Conn));

    if (newgroup_cons == ((void*)0))
        return -1;

    fr_c->conns = newgroup_cons;
    return 0;
}
