
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * uri; } ;
typedef TYPE_1__ nsWineURI ;


 int IUri_Release (int *) ;

__attribute__((used)) static void invalidate_uri(nsWineURI *This)
{
    if(This->uri) {
        IUri_Release(This->uri);
        This->uri = ((void*)0);
    }
}
