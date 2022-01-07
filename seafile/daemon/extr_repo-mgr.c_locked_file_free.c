
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* operation; } ;
typedef TYPE_1__ LockedFile ;


 int g_free (TYPE_1__*) ;

__attribute__((used)) static void
locked_file_free (LockedFile *file)
{
    if (!file)
        return;
    g_free (file->operation);
    g_free (file);
}
