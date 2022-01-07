
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* Distance; struct TYPE_4__** Next; scalar_t__ Element; } ;
struct TYPE_5__ {scalar_t__ MaximumLevel; TYPE_1__ Head; } ;
typedef TYPE_1__* PSKIPLIST_NODE ;
typedef TYPE_2__* PSKIPLIST ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef scalar_t__ CHAR ;


 int printf (char*,...) ;

void
DumpSkiplist(PSKIPLIST Skiplist)
{
    CHAR i;
    DWORD j;
    PSKIPLIST_NODE pNode;

    printf("======= DUMPING SKIPLIST =======\n");

    for (i = Skiplist->MaximumLevel + 1; --i >= 0;)
    {
        pNode = &Skiplist->Head;
        printf("H");

        while (pNode->Next[i])
        {
            printf("-");


            for (j = 1; j < pNode->Distance[i]; j++)
                printf("---");

            printf("%02Iu", (DWORD_PTR)pNode->Next[i]->Element);

            pNode = pNode->Next[i];
        }

        printf("\n");
    }

    printf("================================\n\n");
}
