
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef char* gconstpointer ;


 int strcmp (char const*,char const*) ;

__attribute__((used)) static gint
compare_paths (gconstpointer a, gconstpointer b)
{
    const char *patha = a, *pathb = b;

    return strcmp (patha, pathb);
}
