
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_manager {int dest_context; int dest_context_data; } ;
typedef int PLONG ;
typedef int MSHCTX ;


 int InterlockedCompareExchange (int ,int,int) ;
 int InterlockedExchangePointer (int *,void*) ;






__attribute__((used)) static inline void proxy_manager_set_context(struct proxy_manager *This, MSHCTX dest_context, void *dest_context_data)
{
    MSHCTX old_dest_context;
    MSHCTX new_dest_context;

    do
    {
        old_dest_context = This->dest_context;
        new_dest_context = old_dest_context;


        switch (old_dest_context)
        {
        case 130:
            new_dest_context = dest_context;
            break;
        case 132:
            switch (dest_context)
            {
            case 130:
                break;
            default:
                new_dest_context = dest_context;
            }
            break;
        case 129:
            switch (dest_context)
            {
            case 130:
            case 132:
                break;
            default:
                new_dest_context = dest_context;
            }
            break;
        case 128:
            switch (dest_context)
            {
            case 131:
                new_dest_context = dest_context;
                break;
            default:
                break;
            }
            break;
        default:
            break;
        }

        if (old_dest_context == new_dest_context) break;

        new_dest_context = InterlockedCompareExchange((PLONG)&This->dest_context, new_dest_context, old_dest_context);
    } while (new_dest_context != old_dest_context);

    if (dest_context_data)
        InterlockedExchangePointer(&This->dest_context_data, dest_context_data);
}
