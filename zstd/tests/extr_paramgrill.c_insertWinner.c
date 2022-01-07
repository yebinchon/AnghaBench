
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int result; } ;
struct TYPE_7__ {struct TYPE_7__* next; TYPE_2__ res; } ;
typedef TYPE_1__ winner_ll_node ;
typedef TYPE_2__ winnerInfo_t ;
typedef int constraint_t ;
typedef int BMK_benchResult_t ;






 int assert (int ) ;
 int feasible (int ,int const) ;
 int free (TYPE_1__*) ;
 TYPE_1__* g_winners ;
 TYPE_1__* malloc (int) ;
 int speedSizeCompare (int ,int ) ;

__attribute__((used)) static int
insertWinner(const winnerInfo_t w, const constraint_t targetConstraints)
{
    BMK_benchResult_t r = w.result;
    winner_ll_node* cur_node = g_winners;

    if(!feasible(r, targetConstraints)) {
        return 1;
    }

    if(g_winners == ((void*)0)) {
        winner_ll_node* first_node = malloc(sizeof(winner_ll_node));
        if(first_node == ((void*)0)) {
            return 1;
        }
        first_node->next = ((void*)0);
        first_node->res = w;
        g_winners = first_node;
        return 0;
    }

    while(cur_node->next != ((void*)0)) {
        switch(speedSizeCompare(cur_node->res.result, r)) {
            case 128:
            {
                return 1;
            }
            case 131:
            {
                winner_ll_node* tmp;
                cur_node->res = cur_node->next->res;
                tmp = cur_node->next;
                cur_node->next = cur_node->next->next;
                free(tmp);
                break;
            }
            case 130:
            {
                cur_node = cur_node->next;
                break;
            }
            case 129:
            {
                winner_ll_node* newnode = malloc(sizeof(winner_ll_node));
                if(newnode == ((void*)0)) {
                    return 1;
                }
                newnode->res = cur_node->res;
                cur_node->res = w;
                newnode->next = cur_node->next;
                cur_node->next = newnode;
                return 0;
            }
        }

    }

    assert(cur_node->next == ((void*)0));
    switch(speedSizeCompare(cur_node->res.result, r)) {
        case 128:
        {
            return 1;
        }
        case 131:
        {
            cur_node->res = w;
            return 0;
        }
        case 130:
        {
            winner_ll_node* newnode = malloc(sizeof(winner_ll_node));
            if(newnode == ((void*)0)) {
                return 1;
            }
            newnode->res = w;
            newnode->next = ((void*)0);
            cur_node->next = newnode;
            return 0;
        }
        case 129:
        {
            winner_ll_node* newnode = malloc(sizeof(winner_ll_node));
            if(newnode == ((void*)0)) {
                return 1;
            }
            newnode->res = cur_node->res;
            cur_node->res = w;
            newnode->next = cur_node->next;
            cur_node->next = newnode;
            return 0;
        }
        default:
            return 1;
    }
}
