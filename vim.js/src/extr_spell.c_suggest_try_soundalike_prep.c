
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ga_len; } ;
struct TYPE_10__ {int sl_sounddone; int * sl_sbyts; TYPE_1__ sl_sal; } ;
typedef TYPE_3__ slang_T ;
struct TYPE_11__ {TYPE_3__* lp_slang; } ;
typedef TYPE_4__ langp_T ;
struct TYPE_13__ {int ga_len; } ;
struct TYPE_12__ {TYPE_2__* w_s; } ;
struct TYPE_9__ {TYPE_7__ b_langp; } ;


 TYPE_4__* LANGP_ENTRY (TYPE_7__,int) ;
 TYPE_5__* curwin ;
 int hash_init (int *) ;

__attribute__((used)) static void
suggest_try_soundalike_prep()
{
    langp_T *lp;
    int lpi;
    slang_T *slang;



    for (lpi = 0; lpi < curwin->w_s->b_langp.ga_len; ++lpi)
    {
 lp = LANGP_ENTRY(curwin->w_s->b_langp, lpi);
 slang = lp->lp_slang;
 if (slang->sl_sal.ga_len > 0 && slang->sl_sbyts != ((void*)0))

     hash_init(&slang->sl_sounddone);
    }
}
