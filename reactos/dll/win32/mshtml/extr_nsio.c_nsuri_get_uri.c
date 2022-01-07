
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * uri; } ;
typedef TYPE_1__ nsWineURI ;
typedef int IUri ;


 int IUri_AddRef (int *) ;
 int ensure_uri (TYPE_1__*) ;

IUri *nsuri_get_uri(nsWineURI *nsuri)
{
    if(!ensure_uri(nsuri))
        return ((void*)0);

    IUri_AddRef(nsuri->uri);
    return nsuri->uri;
}
