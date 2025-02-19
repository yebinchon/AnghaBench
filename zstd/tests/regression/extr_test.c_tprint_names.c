
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int g_max_name_len ;
 int strlen (char const*) ;
 int tprintf (int *,char*,char const*,int const,char*,char const*,int const,char*,char const*,int const,char*) ;

void tprint_names(
    FILE* results,
    char const* data_name,
    char const* config_name,
    char const* method_name) {
    int const data_padding = g_max_name_len - strlen(data_name);
    int const config_padding = g_max_name_len - strlen(config_name);
    int const method_padding = g_max_name_len - strlen(method_name);

    tprintf(
        results,
        "%s, %*s%s, %*s%s, %*s",
        data_name,
        data_padding,
        "",
        config_name,
        config_padding,
        "",
        method_name,
        method_padding,
        "");
}
