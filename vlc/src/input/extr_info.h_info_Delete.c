
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_value; struct TYPE_4__* psz_name; } ;
typedef TYPE_1__ info_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static inline void info_Delete(info_t *i)
{
    free(i->psz_name);
    free(i->psz_value);
    free(i);
}
