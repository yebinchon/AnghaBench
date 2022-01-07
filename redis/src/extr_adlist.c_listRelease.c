
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list ;


 int listEmpty (int *) ;
 int zfree (int *) ;

void listRelease(list *list)
{
    listEmpty(list);
    zfree(list);
}
