
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint64 ;
typedef int GError ;


 int calc_recursively (char const*,int **) ;

gint64
ccnet_calc_directory_size (const char *path, GError **error)
{
    return calc_recursively (path, error);
}
