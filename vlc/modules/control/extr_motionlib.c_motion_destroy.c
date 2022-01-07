
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int motion_sensors_t ;


 int free (int *) ;

void motion_destroy( motion_sensors_t *motion )
{
    free( motion );
}
