
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int location_manual_state_t ;


 int free (int *) ;

__attribute__((used)) static void
location_manual_free(location_manual_state_t *state)
{
 free(state);
}
