
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gint ;
typedef TYPE_1__* gconstpointer ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ SeafDirent ;


 int strcmp (int ,int ) ;

__attribute__((used)) static gint
compare_dents (gconstpointer a, gconstpointer b)
{
    const SeafDirent *denta = a, *dentb = b;

    return strcmp(dentb->name, denta->name);
}
