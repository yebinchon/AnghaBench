
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* Bytes; } ;
struct TYPE_5__ {int ExtensionBlockCount; TYPE_2__* ExtensionBlocks; } ;
typedef TYPE_1__ Extensions ;
typedef TYPE_2__ ExtensionBlock ;


 int ungif_free (TYPE_2__*) ;

__attribute__((used)) static void
FreeExtension(Extensions *Extensions)
{
    ExtensionBlock *ep;

    if ((Extensions == ((void*)0)) || (Extensions->ExtensionBlocks == ((void*)0))) {
        return;
    }
    for (ep = Extensions->ExtensionBlocks;
         ep < (Extensions->ExtensionBlocks + Extensions->ExtensionBlockCount); ep++)
        ungif_free(ep->Bytes);
    ungif_free(Extensions->ExtensionBlocks);
    Extensions->ExtensionBlocks = ((void*)0);
}
