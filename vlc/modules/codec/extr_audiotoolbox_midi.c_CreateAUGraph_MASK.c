#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  OSStatus ;
typedef  int /*<<< orphan*/  AudioUnit ;
typedef  int /*<<< orphan*/  AUNode ;
typedef  int /*<<< orphan*/  AUGraph ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bailout ; 
 int /*<<< orphan*/  kAudioUnitSubType_DLSSynth ; 
 int /*<<< orphan*/  kAudioUnitSubType_GenericOutput ; 
 int /*<<< orphan*/  kAudioUnitSubType_MIDISynth ; 
 int /*<<< orphan*/  kAudioUnitSubType_PeakLimiter ; 
 int /*<<< orphan*/  kAudioUnitType_Effect ; 
 int /*<<< orphan*/  kAudioUnitType_MusicDevice ; 
 int /*<<< orphan*/  kAudioUnitType_Output ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OSStatus FUNC6(AUGraph *outGraph, AudioUnit *outSynth, AudioUnit *outOut)
{
    OSStatus res;

    // AudioUnit nodes
    AUNode synthNode, limiterNode, outNode;

    // Create the Graph to which we will add our nodes
    FUNC5(res = FUNC4(outGraph), bailout);

    // Create/add the MIDI synthesizer node (DLS Synth)
#if TARGET_OS_IPHONE
    // On iOS/tvOS use MIDISynth, DLSSynth does not exist there
    on_err_goto(res = AddAppleAUNode(*outGraph,
                                     kAudioUnitType_MusicDevice,
                                     kAudioUnitSubType_MIDISynth,
                                     &synthNode), bailout);
#else
    // Prefer DLSSynth on macOS, as it has a better default behavior
    FUNC5(res = FUNC3(*outGraph,
                                     kAudioUnitType_MusicDevice,
                                     kAudioUnitSubType_DLSSynth,
                                     &synthNode), bailout);
#endif

    // Create/add the peak limiter node
    FUNC5(res = FUNC3(*outGraph,
                                     kAudioUnitType_Effect,
                                     kAudioUnitSubType_PeakLimiter,
                                     &limiterNode), bailout);

    // Create/add the output node (GenericOutput)
    FUNC5(res = FUNC3(*outGraph,
                                     kAudioUnitType_Output,
                                     kAudioUnitSubType_GenericOutput,
                                     &outNode), bailout);

    // Open the Graph, this opens the units that belong to the graph
    // so that we can connect them
    FUNC5(res = FUNC2(*outGraph), bailout);

    // Connect the synthesizer node to the limiter
    FUNC5(res = FUNC0(*outGraph, synthNode, 0, limiterNode, 0), bailout);
    // Connect the limiter node to the output
    FUNC5(res = FUNC0(*outGraph, limiterNode, 0, outNode, 0), bailout);

    // Get reference to the synthesizer node
    FUNC5(res = FUNC1(*outGraph, synthNode, 0, outSynth), bailout);
    // Get reference to the output node
    FUNC5(res = FUNC1(*outGraph, outNode, 0, outOut), bailout);

bailout:
    return res;
}