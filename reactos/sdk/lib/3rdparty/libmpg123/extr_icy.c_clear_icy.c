
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icy_meta {int * data; } ;


 int free (int *) ;
 int init_icy (struct icy_meta*) ;

void clear_icy(struct icy_meta *icy)
{
 if(icy->data != ((void*)0)) free(icy->data);
 init_icy(icy);
}
