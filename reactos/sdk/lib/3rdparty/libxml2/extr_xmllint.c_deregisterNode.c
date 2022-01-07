
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_3__ {int * _private; } ;


 int assert (int) ;
 int free (int *) ;
 int nbregister ;

__attribute__((used)) static void deregisterNode(xmlNodePtr node)
{
    assert(node->_private != ((void*)0));
    assert(*(long*)node->_private == (long) 0x81726354);
    free(node->_private);
    nbregister--;
}
