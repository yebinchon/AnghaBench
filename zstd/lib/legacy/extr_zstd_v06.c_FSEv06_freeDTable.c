
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FSEv06_DTable ;


 int free (int *) ;

void FSEv06_freeDTable (FSEv06_DTable* dt)
{
    free(dt);
}
