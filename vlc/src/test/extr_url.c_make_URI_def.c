
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* vlc_path2uri (char const*,int *) ;

__attribute__((used)) static char *make_URI_def (const char *in)
{
    return vlc_path2uri (in, ((void*)0));
}
