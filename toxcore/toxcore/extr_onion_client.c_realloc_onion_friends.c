
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * friends_list; } ;
typedef int Onion_Friend ;
typedef TYPE_1__ Onion_Client ;


 int free (int *) ;
 int * realloc (int *,int) ;

__attribute__((used)) static int realloc_onion_friends(Onion_Client *onion_c, uint32_t num)
{
    if (num == 0) {
        free(onion_c->friends_list);
        onion_c->friends_list = ((void*)0);
        return 0;
    }

    Onion_Friend *newonion_friends = realloc(onion_c->friends_list, num * sizeof(Onion_Friend));

    if (newonion_friends == ((void*)0))
        return -1;

    onion_c->friends_list = newonion_friends;
    return 0;
}
