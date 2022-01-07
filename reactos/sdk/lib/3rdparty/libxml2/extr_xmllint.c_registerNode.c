
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_3__ {int * _private; } ;


 int XMLLINT_ERR_MEM ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int * malloc (int) ;
 int nbregister ;
 int stderr ;

__attribute__((used)) static void registerNode(xmlNodePtr node)
{
    node->_private = malloc(sizeof(long));
    if (node->_private == ((void*)0)) {
        fprintf(stderr, "Out of memory in xmllint:registerNode()\n");
 exit(XMLLINT_ERR_MEM);
    }
    *(long*)node->_private = (long) 0x81726354;
    nbregister++;
}
