
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_uri_component_validate (char const*,char*) ;

__attribute__((used)) static bool vlc_uri_path_validate(const char *str)
{
    return vlc_uri_component_validate(str, "/@:");
}
