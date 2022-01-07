
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FSEv05_DTable ;


 int free (int *) ;

void FSEv05_freeDTable (FSEv05_DTable* dt)
{
    free(dt);
}
