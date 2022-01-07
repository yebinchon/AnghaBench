
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tmHeight; } ;
struct TYPE_4__ {TYPE_1__ tm; } ;
typedef TYPE_2__ ScriptCache ;
typedef scalar_t__ SCRIPT_CACHE ;
typedef int LONG ;



__attribute__((used)) static inline LONG get_cache_height(SCRIPT_CACHE *psc)
{
    return ((ScriptCache *)*psc)->tm.tmHeight;
}
