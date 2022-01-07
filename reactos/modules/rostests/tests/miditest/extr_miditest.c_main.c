
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {char* szPname; } ;
typedef TYPE_1__ MIDIOUTCAPS ;
typedef char* HMIDIOUT ;


 int CALLBACK_NULL ;
 scalar_t__ MMSYSERR_NOERROR ;
 scalar_t__ midiOutGetDevCaps (int,TYPE_1__*,int) ;
 int midiOutGetNumDevs () ;
 int midiOutOpen (char**,int ,int ,int ,int ) ;
 int midiOutShortMsg (char*,int) ;
 int printf (char*,...) ;

int main()
{
    UINT outs = midiOutGetNumDevs();


    MIDIOUTCAPS outcaps;


    int c;

    HMIDIOUT Handle = ((void*)0);
    UINT Result;

    printf("MIDI output devices: %d\n", outs);

    for (c = 0; c < outs; c ++)
    {
        if (midiOutGetDevCaps(c, &outcaps, sizeof(MIDIOUTCAPS)) == MMSYSERR_NOERROR)
            printf("Device #%d: %s\n", c, outcaps.szPname);
    }

    printf("Opening MIDI output #0\n");

    Result = midiOutOpen(&Handle, 0, 0, 0, CALLBACK_NULL);
    printf("Result == %d Handle == %p\n", Result, Handle);


    midiOutShortMsg(Handle, 0x007f3090);
    return 0;
}
