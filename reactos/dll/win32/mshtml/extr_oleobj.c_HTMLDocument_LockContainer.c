
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ container_locked; int client; } ;
typedef int IOleContainer ;
typedef TYPE_1__ HTMLDocumentObj ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int IOleClientSite_GetContainer (int ,int **) ;
 int IOleContainer_LockContainer (int *,scalar_t__) ;
 int IOleContainer_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;

void HTMLDocument_LockContainer(HTMLDocumentObj *This, BOOL fLock)
{
    IOleContainer *container;
    HRESULT hres;

    if(!This->client || This->container_locked == fLock)
        return;

    hres = IOleClientSite_GetContainer(This->client, &container);
    if(SUCCEEDED(hres)) {
        IOleContainer_LockContainer(container, fLock);
        This->container_locked = fLock;
        IOleContainer_Release(container);
    }
}
