
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srr1; } ;


 int Continue ;
 int DataInAddr ;
 int* DataInBuffer ;
 int GDB_SAVE_SIZE ;
 int PacketEmpty () ;
 int PacketFinish () ;
 int PacketOk () ;
 void* PacketReadHexNumber (int) ;
 int PacketStart () ;
 int PacketWriteHexNumber (char,int) ;
 int PacketWriteSignal (int ) ;
 TYPE_1__* RegisterSaveArea ;
 int Signal ;
 int marker () ;

void GotPacket()
{
    int i, memaddr, memsize;

    Continue = 0;
    switch (DataInBuffer[DataInAddr++])
    {
    case 'g':
        PacketStart();
        for (i = 0; i < GDB_SAVE_SIZE; i++)
        {
            PacketWriteHexNumber(((int *)RegisterSaveArea)[i], 8);
        }
        PacketFinish();
        break;

    case 'G':
        for (i = 0; i < sizeof(*RegisterSaveArea) / sizeof(int); i++)
        {
            ((int *)RegisterSaveArea)[i] = PacketReadHexNumber(8);
        }
        PacketOk();
        break;

    case 'm':
        memaddr = PacketReadHexNumber(8);
        DataInAddr++;
        memsize = PacketReadHexNumber(8);
        PacketStart();
        while(memsize-- > 0)
        {
            PacketWriteHexNumber(*((char *)memaddr++), 2);
        }
        PacketFinish();
        break;

    case 'M':
        memaddr = PacketReadHexNumber(8);
        DataInAddr++;
        memsize = PacketReadHexNumber(8);
        DataInAddr++;
        while(memsize-- > 0)
        {
            *((char *)memaddr++) = PacketReadHexNumber(2);
        }
        PacketOk();
        break;

    case '?':
        PacketWriteSignal(Signal);
        break;

    case 'c':
        PacketOk();
        Continue = 1;
        break;

    case 'S':
        PacketOk();
        Continue = 0;
        break;

    case 's':
        RegisterSaveArea->srr1 |= 0x400;
        PacketOk();
        Continue = 1;
        marker();
        break;

    case 'q':
        switch (DataInBuffer[1])
        {
        case 'S':
            PacketEmpty();
            break;

        case 'O':
            PacketEmpty();
            break;
        }
        break;

    default:
        PacketEmpty();
        break;
    }
}
