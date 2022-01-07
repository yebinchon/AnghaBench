
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GError ;


 int exit (int ) ;
 int seaf_warning (char*) ;

int
seafile_shutdown (GError **error)
{
    seaf_warning ("Got an exit command. Now exiting\n");
    exit(0);
    return 0;
}
