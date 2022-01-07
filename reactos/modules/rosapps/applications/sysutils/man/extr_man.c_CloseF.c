
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OpenFlag ;
 scalar_t__ fclose (int ) ;
 int manfile ;

int
CloseF()
{
    int retval=0;

    if(fclose(manfile))
     OpenFlag=0;
    else retval=-1;

    return retval;
}
