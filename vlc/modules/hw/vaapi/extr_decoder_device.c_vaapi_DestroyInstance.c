
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vaapi_instance {int * native; int (* native_destroy_cb ) (int *) ;int dpy; } ;


 int free (struct vaapi_instance*) ;
 int stub1 (int *) ;
 int vaTerminate (int ) ;

__attribute__((used)) static void
vaapi_DestroyInstance(struct vaapi_instance *inst)
{
    vaTerminate(inst->dpy);
    if (inst->native != ((void*)0) && inst->native_destroy_cb != ((void*)0))
        inst->native_destroy_cb(inst->native);
    free(inst);
}
