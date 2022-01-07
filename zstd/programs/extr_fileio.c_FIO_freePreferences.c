
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FIO_prefs_t ;


 int free (int * const) ;

void FIO_freePreferences(FIO_prefs_t* const prefs)
{
    free(prefs);
}
