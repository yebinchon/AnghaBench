
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oletls {int spies; } ;
struct TYPE_2__ {struct oletls* ReservedForOle; } ;


 TYPE_1__* NtCurrentTeb () ;
 struct oletls* heap_alloc_zero (int) ;
 int list_init (int *) ;

__attribute__((used)) static inline struct oletls *COM_CurrentInfo(void)
{
    if (!NtCurrentTeb()->ReservedForOle)
    {
        struct oletls *oletls = heap_alloc_zero(sizeof(*oletls));
        if (oletls)
            list_init(&oletls->spies);
        NtCurrentTeb()->ReservedForOle = oletls;
    }

    return NtCurrentTeb()->ReservedForOle;
}
