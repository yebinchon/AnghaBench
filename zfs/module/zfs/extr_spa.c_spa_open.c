
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int spa_open_common (char const*,int **,void*,int *,int *) ;

int
spa_open(const char *name, spa_t **spapp, void *tag)
{
 return (spa_open_common(name, spapp, tag, ((void*)0), ((void*)0)));
}
