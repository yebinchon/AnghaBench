
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; void* next; } ;
typedef TYPE_1__ LINK ;


 int free (TYPE_1__*) ;
 int vffree (TYPE_1__*) ;

void qfree(void **root)
{
    LINK *this;

    while (*root) {
 this = (LINK *) * root;
 *root = this->next;

 free(this->data);
 free(this);




    }
}
