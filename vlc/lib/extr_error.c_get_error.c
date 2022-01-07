
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int context ;
 char* vlc_threadvar_get (int ) ;

__attribute__((used)) static char *get_error (void)
{
    return vlc_threadvar_get (context);
}
