
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cmsContext_struct {struct _cmsContext_struct* Next; } ;
typedef scalar_t__ cmsContext ;


 struct _cmsContext_struct* _cmsContextPoolHead ;
 struct _cmsContext_struct globalContext ;

struct _cmsContext_struct* _cmsGetContext(cmsContext ContextID)
{
    struct _cmsContext_struct* id = (struct _cmsContext_struct*) ContextID;
    struct _cmsContext_struct* ctx;



    if (id == ((void*)0))
        return &globalContext;


    for (ctx = _cmsContextPoolHead;
         ctx != ((void*)0);
         ctx = ctx ->Next) {


            if (id == ctx)
                return ctx;
    }

    return &globalContext;
}
