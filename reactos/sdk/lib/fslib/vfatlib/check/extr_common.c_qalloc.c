
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* data; void* next; } ;
typedef TYPE_1__ LINK ;


 void* alloc (int) ;
 void* vfalloc (int) ;

void *qalloc(void **root, int size)
{
    LINK *link;


    link = alloc(sizeof(LINK));



    link->next = *root;
    *root = link;

    return link->data = alloc(size);



}
