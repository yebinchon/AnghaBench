
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ByteCount; int* Bytes; int Function; } ;
struct TYPE_6__ {int ExtensionBlockCount; int Function; TYPE_2__* ExtensionBlocks; } ;
typedef TYPE_1__ Extensions ;
typedef TYPE_2__ ExtensionBlock ;


 int GIF_ERROR ;
 int GIF_OK ;
 int memcpy (int*,unsigned char const*,int) ;
 void* ungif_alloc (int) ;
 TYPE_2__* ungif_realloc (TYPE_2__*,int) ;

__attribute__((used)) static int
AddExtensionBlock(Extensions *New,
                  int Len,
                  const unsigned char ExtData[]) {

    ExtensionBlock *ep;

    if (New->ExtensionBlocks == ((void*)0))
        New->ExtensionBlocks = ungif_alloc(sizeof(ExtensionBlock));
    else
        New->ExtensionBlocks = ungif_realloc(New->ExtensionBlocks,
                                      sizeof(ExtensionBlock) *
                                      (New->ExtensionBlockCount + 1));

    if (New->ExtensionBlocks == ((void*)0))
        return (GIF_ERROR);

    ep = &New->ExtensionBlocks[New->ExtensionBlockCount++];

    ep->ByteCount=Len + 3;
    ep->Bytes = ungif_alloc(ep->ByteCount + 3);
    if (ep->Bytes == ((void*)0))
        return (GIF_ERROR);


    ep->Bytes[0] = 0x21;
    ep->Bytes[1] = New->Function;
    ep->Bytes[2] = Len;

    if (ExtData) {
        memcpy(ep->Bytes + 3, ExtData, Len);
        ep->Function = New->Function;
    }

    return (GIF_OK);
}
