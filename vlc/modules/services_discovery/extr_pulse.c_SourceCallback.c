
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int services_discovery_t ;
typedef int pa_source_info ;
typedef int pa_context ;


 int AddSource (int *,int const*) ;

__attribute__((used)) static void SourceCallback(pa_context *ctx, const pa_source_info *i, int eol,
                           void *userdata)
{
    services_discovery_t *sd = userdata;

    if (eol)
        return;
    AddSource (sd, i);
    (void) ctx;
}
