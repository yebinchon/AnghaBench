
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_plugin_symbol {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int vlc_plugin_symbol_compare(const void *a, const void *b)
{
    const struct vlc_plugin_symbol *sa = a , *sb = b;

    return strcmp(sa->name, sb->name);
}
