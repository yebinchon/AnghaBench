
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExposePort ;


 int LIST_REMOVE (int ,int *,int *) ;
 int free (int *) ;
 int ports ;

void expose_port_free_all(ExposePort *p) {

        while (p) {
                ExposePort *q = p;
                LIST_REMOVE(ports, p, q);
                free(q);
        }
}
