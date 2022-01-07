
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int snprintf (char*,size_t,char*,char*) ;
 char* spa_state_to_name (int *) ;

__attribute__((used)) static int
spa_state_data(char *buf, size_t size, void *data)
{
 spa_t *spa = (spa_t *)data;
 (void) snprintf(buf, size, "%s\n", spa_state_to_name(spa));
 return (0);
}
