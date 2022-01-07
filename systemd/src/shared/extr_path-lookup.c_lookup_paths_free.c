
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* temporary_dir; void* root_dir; void* runtime_control; void* persistent_control; void* transient; void* generator_late; void* generator_early; void* generator; void* runtime_attached; void* persistent_attached; void* runtime_config; void* persistent_config; int search_path; } ;
typedef TYPE_1__ LookupPaths ;


 void* mfree (void*) ;
 int strv_free (int ) ;

void lookup_paths_free(LookupPaths *p) {
        if (!p)
                return;

        p->search_path = strv_free(p->search_path);

        p->persistent_config = mfree(p->persistent_config);
        p->runtime_config = mfree(p->runtime_config);

        p->persistent_attached = mfree(p->persistent_attached);
        p->runtime_attached = mfree(p->runtime_attached);

        p->generator = mfree(p->generator);
        p->generator_early = mfree(p->generator_early);
        p->generator_late = mfree(p->generator_late);

        p->transient = mfree(p->transient);

        p->persistent_control = mfree(p->persistent_control);
        p->runtime_control = mfree(p->runtime_control);

        p->root_dir = mfree(p->root_dir);
        p->temporary_dir = mfree(p->temporary_dir);
}
