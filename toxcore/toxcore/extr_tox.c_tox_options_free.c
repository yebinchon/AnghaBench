
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Tox_Options {int dummy; } ;


 int free (struct Tox_Options*) ;

void tox_options_free(struct Tox_Options *options)
{
    free(options);
}
