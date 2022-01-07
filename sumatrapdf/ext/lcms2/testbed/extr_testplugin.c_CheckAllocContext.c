
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsContext ;


 int DebugMemDontCheckThis (int ) ;
 int DupContext (int ,int *) ;
 int * PluginMemHandler () ;
 int cmsCreateContext (int *,int *) ;
 int cmsDeleteContext (int ) ;
 int cmsPlugin (int ,int *) ;

cmsInt32Number CheckAllocContext(void)
{
     cmsContext c1, c2, c3, c4;

     c1 = cmsCreateContext(((void*)0), ((void*)0));
     DebugMemDontCheckThis(c1);
     cmsDeleteContext(c1);

     c2 = cmsCreateContext(PluginMemHandler(), ((void*)0));
     DebugMemDontCheckThis(c2);
     cmsDeleteContext(c2);

     c1 = cmsCreateContext(((void*)0), ((void*)0));
     DebugMemDontCheckThis(c1);

     c2 = cmsCreateContext(PluginMemHandler(), ((void*)0));
     DebugMemDontCheckThis(c2);

     cmsPlugin(c1, PluginMemHandler());

     c3 = DupContext(c1, ((void*)0));
     c4 = DupContext(c2, ((void*)0));

     cmsDeleteContext(c1);
     cmsDeleteContext(c2);
     cmsDeleteContext(c3);
     cmsDeleteContext(c4);

     return 1;
}
