
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_trap_frame_t ;


 int ActualCsum ;
 int ComputedCsum ;
 scalar_t__ Continue ;
 size_t DataInAddr ;
 int* DataInBuffer ;
 int GotPacket () ;
 int PacketWriteSignal (int) ;
 int ParseState ;
 int * RegisterSaveArea ;
 int SerialRead () ;
 int SerialWrite (char) ;
 int Signal ;
 int chr (int ) ;
 int hex2int (int) ;
 int serport ;

int SerialInterrupt(int signal, ppc_trap_frame_t *tf)
{
    int ch;

    if (!chr(serport)) return 0;

    Signal = signal;
    RegisterSaveArea = tf;

    do
    {
        ch = SerialRead();

        if (ch == 3)
        {
            Continue = 0;
            PacketWriteSignal(3);
        }
        else if (ch == '+')
        {

        }
        else if (ch == '$')
        {
            DataInAddr = 0;
            ParseState = 0;
            ComputedCsum = 0;
            ActualCsum = 0;
        }
        else if (ch == '#' && ParseState == 0)
        {
            ParseState = 2;
        }
        else if (ParseState == 0)
        {
            ComputedCsum += ch;
            DataInBuffer[DataInAddr++] = ch;
        }
        else if (ParseState == 2)
        {
            ActualCsum = ch;
            ParseState++;
        }
        else if (ParseState == 3)
        {
            ActualCsum = hex2int(ch) | (hex2int(ActualCsum) << 4);
            ComputedCsum &= 255;
            ParseState = -1;
            if (ComputedCsum == ActualCsum)
            {
                ComputedCsum = 0;
                DataInBuffer[DataInAddr] = 0;
                DataInAddr = 0;
                Continue = 0;
                SerialWrite('+');
                GotPacket();
            }
            else
                SerialWrite('-');
        }
        else if (ParseState == -1)
            SerialWrite('-');
    }
    while (!Continue);
    return 1;
}
