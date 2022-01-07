
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;


 int g_free (int ) ;

__attribute__((used)) static void free_path (gpointer data, gpointer user_data)
{
    g_free (data);
}
