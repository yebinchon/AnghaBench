
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int,unsigned int) ;
 int free (void*) ;
 int g_allocCount ;
 int stderr ;

void MyFree(void *address)
{




  free(address);
}
