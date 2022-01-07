
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; scalar_t__ srcStart; scalar_t__ src; } ;
typedef TYPE_1__ frame_t ;
typedef scalar_t__ U64 ;
typedef int U32 ;
typedef int BYTE ;


 int DISPLAYLEVEL (int,char*,unsigned int) ;
 int MEM_writeLE32 (int *,int ) ;
 scalar_t__ XXH64 (scalar_t__,int,int ) ;

__attribute__((used)) static void writeChecksum(frame_t* frame)
{

    U64 digest = XXH64(frame->srcStart, (BYTE*)frame->src-(BYTE*)frame->srcStart, 0);
    DISPLAYLEVEL(3, "  checksum: %08x\n", (unsigned)digest);
    MEM_writeLE32(frame->data, (U32)digest);
    frame->data = (BYTE*)frame->data + 4;
}
