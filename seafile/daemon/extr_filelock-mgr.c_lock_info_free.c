
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LockInfo ;


 int g_free (int *) ;

__attribute__((used)) static void
lock_info_free (LockInfo *info)
{
    g_free (info);
}
