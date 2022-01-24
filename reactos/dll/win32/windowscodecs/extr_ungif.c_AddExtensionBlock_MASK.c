#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ByteCount; int* Bytes; int Function; } ;
struct TYPE_6__ {int ExtensionBlockCount; int Function; TYPE_2__* ExtensionBlocks; } ;
typedef  TYPE_1__ Extensions ;
typedef  TYPE_2__ ExtensionBlock ;

/* Variables and functions */
 int GIF_ERROR ; 
 int GIF_OK ; 
 int /*<<< orphan*/  FUNC0 (int*,unsigned char const*,int) ; 
 void* FUNC1 (int) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC3(Extensions *New,
                  int Len,
                  const unsigned char ExtData[]) {

    ExtensionBlock *ep;

    if (New->ExtensionBlocks == NULL)
        New->ExtensionBlocks = FUNC1(sizeof(ExtensionBlock));
    else
        New->ExtensionBlocks = FUNC2(New->ExtensionBlocks,
                                      sizeof(ExtensionBlock) *
                                      (New->ExtensionBlockCount + 1));

    if (New->ExtensionBlocks == NULL)
        return (GIF_ERROR);

    ep = &New->ExtensionBlocks[New->ExtensionBlockCount++];

    ep->ByteCount=Len + 3;
    ep->Bytes = FUNC1(ep->ByteCount + 3);
    if (ep->Bytes == NULL)
        return (GIF_ERROR);

    /* Extension Header */
    ep->Bytes[0] = 0x21;
    ep->Bytes[1] = New->Function;
    ep->Bytes[2] = Len;

    if (ExtData) {
        FUNC0(ep->Bytes + 3, ExtData, Len);
        ep->Function = New->Function;
    }

    return (GIF_OK);
}