
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSStatus ;
typedef int AudioUnit ;
typedef int AUNode ;
typedef int AUGraph ;


 int AUGraphConnectNodeInput (int ,int ,int ,int ,int ) ;
 int AUGraphNodeInfo (int ,int ,int ,int *) ;
 int AUGraphOpen (int ) ;
 int AddAppleAUNode (int ,int ,int ,int *) ;
 int NewAUGraph (int *) ;
 int bailout ;
 int kAudioUnitSubType_DLSSynth ;
 int kAudioUnitSubType_GenericOutput ;
 int kAudioUnitSubType_MIDISynth ;
 int kAudioUnitSubType_PeakLimiter ;
 int kAudioUnitType_Effect ;
 int kAudioUnitType_MusicDevice ;
 int kAudioUnitType_Output ;
 int on_err_goto (int ,int ) ;

__attribute__((used)) static OSStatus CreateAUGraph(AUGraph *outGraph, AudioUnit *outSynth, AudioUnit *outOut)
{
    OSStatus res;


    AUNode synthNode, limiterNode, outNode;


    on_err_goto(res = NewAUGraph(outGraph), bailout);
    on_err_goto(res = AddAppleAUNode(*outGraph,
                                     kAudioUnitType_MusicDevice,
                                     kAudioUnitSubType_DLSSynth,
                                     &synthNode), bailout);



    on_err_goto(res = AddAppleAUNode(*outGraph,
                                     kAudioUnitType_Effect,
                                     kAudioUnitSubType_PeakLimiter,
                                     &limiterNode), bailout);


    on_err_goto(res = AddAppleAUNode(*outGraph,
                                     kAudioUnitType_Output,
                                     kAudioUnitSubType_GenericOutput,
                                     &outNode), bailout);



    on_err_goto(res = AUGraphOpen(*outGraph), bailout);


    on_err_goto(res = AUGraphConnectNodeInput(*outGraph, synthNode, 0, limiterNode, 0), bailout);

    on_err_goto(res = AUGraphConnectNodeInput(*outGraph, limiterNode, 0, outNode, 0), bailout);


    on_err_goto(res = AUGraphNodeInfo(*outGraph, synthNode, 0, outSynth), bailout);

    on_err_goto(res = AUGraphNodeInfo(*outGraph, outNode, 0, outOut), bailout);

bailout:
    return res;
}
