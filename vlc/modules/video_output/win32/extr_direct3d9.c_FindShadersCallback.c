
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** values; char** descs; int count; int member_2; int * member_1; int * member_0; } ;
typedef TYPE_1__ enum_context_t ;


 int ListShaders (TYPE_1__*) ;
 int VLC_UNUSED (char const*) ;

__attribute__((used)) static int FindShadersCallback(const char *name, char ***values, char ***descs)
{
    VLC_UNUSED(name);

    enum_context_t ctx = { ((void*)0), ((void*)0), 0 };

    ListShaders(&ctx);

    *values = ctx.values;
    *descs = ctx.descs;
    return ctx.count;

}
