#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mixerlineA ;
typedef  int /*<<< orphan*/  controls ;
typedef  int /*<<< orphan*/  capsA2 ;
typedef  int /*<<< orphan*/  capsA ;
typedef  scalar_t__ ULONG_PTR ;
typedef  int UINT_PTR ;
struct TYPE_17__ {int cSteps; } ;
struct TYPE_21__ {size_t szName; int dwControlID; size_t cMultipleItems; TYPE_2__ Metrics; int /*<<< orphan*/  Bounds; int /*<<< orphan*/  fdwControl; int /*<<< orphan*/  dwControlType; int /*<<< orphan*/  szShortName; } ;
struct TYPE_20__ {int vDriverVersion; size_t cDestinations; int /*<<< orphan*/  szPname; int /*<<< orphan*/  wPid; int /*<<< orphan*/  wMid; } ;
struct TYPE_16__ {int vDriverVersion; int /*<<< orphan*/  wPid; int /*<<< orphan*/  wMid; int /*<<< orphan*/  szPname; int /*<<< orphan*/  dwDeviceID; int /*<<< orphan*/  dwType; } ;
struct TYPE_19__ {int cbStruct; size_t dwDestination; scalar_t__ dwUser; size_t dwSource; size_t dwLineID; size_t cConnections; int cControls; TYPE_1__ Target; int /*<<< orphan*/  dwComponentType; int /*<<< orphan*/  fdwLine; int /*<<< orphan*/  cChannels; int /*<<< orphan*/  szName; int /*<<< orphan*/  szShortName; } ;
struct TYPE_18__ {int cbStruct; int cControls; size_t dwLineID; int cbmxctrl; TYPE_6__* pamxctrl; } ;
struct TYPE_15__ {size_t dwMaximum; int /*<<< orphan*/  dwMinimum; } ;
typedef  scalar_t__ MMRESULT ;
typedef  TYPE_3__ MIXERLINECONTROLSA ;
typedef  TYPE_4__ MIXERLINEA ;
typedef  int /*<<< orphan*/  MIXERCONTROLA ;
typedef  TYPE_5__ MIXERCAPSA ;
typedef  TYPE_6__* LPMIXERCONTROLA ;
typedef  scalar_t__ HMIXEROBJ ;
typedef  int /*<<< orphan*/  HMIXER ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 scalar_t__ MIXERR_INVALLINE ; 
 int MIXER_GETLINECONTROLSF_ALL ; 
 int MIXER_GETLINEINFOF_DESTINATION ; 
 int MIXER_GETLINEINFOF_SOURCE ; 
 scalar_t__ MMSYSERR_INVALFLAG ; 
 scalar_t__ MMSYSERR_INVALPARAM ; 
 scalar_t__ MMSYSERR_NODRIVER ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 TYPE_12__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int,TYPE_5__*,int) ; 
 scalar_t__ FUNC10 (scalar_t__,TYPE_3__*,int) ; 
 scalar_t__ FUNC11 (scalar_t__,TYPE_4__*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC20(int device)
{
    MIXERCAPSA capsA;
    HMIXEROBJ mix;
    MMRESULT rc;
    DWORD d,s,ns,nc;

    rc=FUNC9(device,0,sizeof(capsA));
    FUNC15(rc==MMSYSERR_INVALPARAM,
       "mixerGetDevCapsA: MMSYSERR_INVALPARAM expected, got %s\n",
       FUNC14(rc));

    rc=FUNC9(device,&capsA,4);
    FUNC15(rc==MMSYSERR_NOERROR,
       "mixerGetDevCapsA: MMSYSERR_NOERROR expected, got %s\n",
       FUNC14(rc));

    rc=FUNC9(device,&capsA,sizeof(capsA));
    FUNC15(rc==MMSYSERR_NOERROR,
       "mixerGetDevCapsA: MMSYSERR_NOERROR expected, got %s\n",
       FUNC14(rc));

    if (winetest_interactive) {
        FUNC19("  %d: \"%s\" %d.%d (%d:%d) destinations=%d\n", device,
              capsA.szPname, capsA.vDriverVersion >> 8,
              capsA.vDriverVersion & 0xff,capsA.wMid,capsA.wPid,
              capsA.cDestinations);
    } else {
        FUNC19("  %d: \"%s\" %d.%d (%d:%d)\n", device,
              capsA.szPname, capsA.vDriverVersion >> 8,
              capsA.vDriverVersion & 0xff,capsA.wMid,capsA.wPid);
    }

    rc = FUNC12((HMIXER*)&mix, device, 0, 0, 0);
    FUNC15(rc==MMSYSERR_NOERROR,
       "mixerOpen: MMSYSERR_NOERROR expected, got %s\n",FUNC14(rc));
    if (rc==MMSYSERR_NOERROR) {
        MIXERCAPSA capsA2;

        rc=FUNC9((UINT_PTR)mix,&capsA2,sizeof(capsA2));
        FUNC15(rc==MMSYSERR_NOERROR,
           "mixerGetDevCapsA: MMSYSERR_NOERROR expected, got %s\n",
           FUNC14(rc));
        FUNC15(!FUNC16(capsA2.szPname, capsA.szPname), "Got wrong device caps\n");

        for (d=0;d<capsA.cDestinations;d++) {
            MIXERLINEA mixerlineA;
            mixerlineA.cbStruct = 0;
            mixerlineA.dwDestination=d;
            rc = FUNC11(mix, &mixerlineA, MIXER_GETLINEINFOF_DESTINATION);
            FUNC15(rc==MMSYSERR_INVALPARAM,
               "mixerGetLineInfoA(MIXER_GETLINEINFOF_DESTINATION): "
               "MMSYSERR_INVALPARAM expected, got %s\n",
               FUNC14(rc));

            mixerlineA.cbStruct = sizeof(mixerlineA);
            mixerlineA.dwDestination=capsA.cDestinations;
            rc = FUNC11(mix, &mixerlineA, MIXER_GETLINEINFOF_DESTINATION);
            FUNC15(rc==MMSYSERR_INVALPARAM||rc==MIXERR_INVALLINE,
               "mixerGetLineInfoA(MIXER_GETLINEINFOF_DESTINATION): "
               "MMSYSERR_INVALPARAM or MIXERR_INVALLINE expected, got %s\n",
               FUNC14(rc));

            mixerlineA.cbStruct = sizeof(mixerlineA);
            mixerlineA.dwDestination=d;
            rc = FUNC11(mix, 0, MIXER_GETLINEINFOF_DESTINATION);
            FUNC15(rc==MMSYSERR_INVALPARAM,
               "mixerGetLineInfoA(MIXER_GETLINEINFOF_DESTINATION): "
               "MMSYSERR_INVALPARAM expected, got %s\n",
               FUNC14(rc));

            mixerlineA.cbStruct = sizeof(mixerlineA);
            mixerlineA.dwDestination=d;
            rc = FUNC11(mix, &mixerlineA, -1);
            FUNC15(rc==MMSYSERR_INVALFLAG,
               "mixerGetLineInfoA(-1): MMSYSERR_INVALFLAG expected, got %s\n",
               FUNC14(rc));

            mixerlineA.cbStruct = sizeof(mixerlineA);
            mixerlineA.dwDestination=d;
            mixerlineA.dwUser = (ULONG_PTR)0xdeadbeef;
            rc = FUNC11(mix, &mixerlineA, MIXER_GETLINEINFOF_DESTINATION);
            FUNC15(rc==MMSYSERR_NOERROR||rc==MMSYSERR_NODRIVER,
               "mixerGetLineInfoA(MIXER_GETLINEINFOF_DESTINATION): "
               "MMSYSERR_NOERROR expected, got %s\n",
               FUNC14(rc));
            FUNC15(mixerlineA.dwUser == 0, "dwUser was not reset\n");
            if (rc==MMSYSERR_NODRIVER)
                FUNC19("  No Driver\n");
            else if (rc==MMSYSERR_NOERROR) {
	      if (winetest_interactive) {
                FUNC19("    %d: \"%s\" (%s) Destination=%d Source=%d\n",
                      d,mixerlineA.szShortName, mixerlineA.szName,
                      mixerlineA.dwDestination,mixerlineA.dwSource);
                FUNC19("        LineID=%08x Channels=%d "
                      "Connections=%d Controls=%d\n",
                      mixerlineA.dwLineID,mixerlineA.cChannels,
                      mixerlineA.cConnections,mixerlineA.cControls);
                FUNC19("        State=0x%08x(%s)\n",
                      mixerlineA.fdwLine,FUNC7(mixerlineA.fdwLine));
                FUNC19("        ComponentType=%s\n",
                      FUNC4(mixerlineA.dwComponentType));
                FUNC19("        Type=%s\n",
                      FUNC17(mixerlineA.Target.dwType));
                FUNC19("        Device=%d (%s) %d.%d (%d:%d)\n",
                      mixerlineA.Target.dwDeviceID,
                      mixerlineA.Target.szPname,
                      mixerlineA.Target.vDriverVersion >> 8,
                      mixerlineA.Target.vDriverVersion & 0xff,
                      mixerlineA.Target.wMid, mixerlineA.Target.wPid);
	      }
              ns=mixerlineA.cConnections;
              for(s=0;s<ns;s++) {
                mixerlineA.cbStruct = sizeof(mixerlineA);
                mixerlineA.dwDestination=d;
                mixerlineA.dwSource=s;
                rc = FUNC11(mix, &mixerlineA, MIXER_GETLINEINFOF_SOURCE);
                FUNC15(rc==MMSYSERR_NOERROR||rc==MMSYSERR_NODRIVER,
                   "mixerGetLineInfoA(MIXER_GETLINEINFOF_SOURCE): "
                   "MMSYSERR_NOERROR expected, got %s\n",
                   FUNC14(rc));
                if (rc==MMSYSERR_NODRIVER)
                    FUNC19("  No Driver\n");
                else if (rc==MMSYSERR_NOERROR) {
                    LPMIXERCONTROLA    array;
                    MIXERLINECONTROLSA controls;
                    if (winetest_interactive) {
                        FUNC19("      %d: \"%s\" (%s) Destination=%d Source=%d\n",
                              s,mixerlineA.szShortName, mixerlineA.szName,
                              mixerlineA.dwDestination,mixerlineA.dwSource);
                        FUNC19("          LineID=%08x Channels=%d "
                              "Connections=%d Controls=%d\n",
                              mixerlineA.dwLineID,mixerlineA.cChannels,
                              mixerlineA.cConnections,mixerlineA.cControls);
                        FUNC19("          State=0x%08x(%s)\n",
                              mixerlineA.fdwLine,FUNC7(mixerlineA.fdwLine));
                        FUNC19("          ComponentType=%s\n",
                              FUNC4(mixerlineA.dwComponentType));
                        FUNC19("          Type=%s\n",
                              FUNC17(mixerlineA.Target.dwType));
                        FUNC19("          Device=%d (%s) %d.%d (%d:%d)\n",
                              mixerlineA.Target.dwDeviceID,
                              mixerlineA.Target.szPname,
                              mixerlineA.Target.vDriverVersion >> 8,
                              mixerlineA.Target.vDriverVersion & 0xff,
                              mixerlineA.Target.wMid, mixerlineA.Target.wPid);
                    }
                    if (mixerlineA.cControls) {
                        array=FUNC1(FUNC0(),HEAP_ZERO_MEMORY,
                            mixerlineA.cControls*sizeof(MIXERCONTROLA));
                        if (array) {
                            FUNC8(&controls, 0, sizeof(controls));

                            rc = FUNC10(mix, 0, MIXER_GETLINECONTROLSF_ALL);
                            FUNC15(rc==MMSYSERR_INVALPARAM,
                               "mixerGetLineControlsA(MIXER_GETLINECONTROLSF_ALL): "
                               "MMSYSERR_INVALPARAM expected, got %s\n",
                               FUNC14(rc));

                            rc = FUNC10(mix, &controls, -1);
                            FUNC15(rc==MMSYSERR_INVALFLAG||rc==MMSYSERR_INVALPARAM,
                               "mixerGetLineControlsA(-1): "
                               "MMSYSERR_INVALFLAG or MMSYSERR_INVALPARAM expected, got %s\n",
                               FUNC14(rc));

                            controls.cbStruct = sizeof(MIXERLINECONTROLSA);
                            controls.cControls = mixerlineA.cControls;
                            controls.dwLineID = mixerlineA.dwLineID;
                            controls.pamxctrl = array;
                            controls.cbmxctrl = sizeof(MIXERCONTROLA);

                            /* FIXME: do MIXER_GETLINECONTROLSF_ONEBYID
                             * and MIXER_GETLINECONTROLSF_ONEBYTYPE
                             */
                            rc = FUNC10(mix, &controls, MIXER_GETLINECONTROLSF_ALL);
                            FUNC15(rc==MMSYSERR_NOERROR,
                               "mixerGetLineControlsA(MIXER_GETLINECONTROLSF_ALL): "
                               "MMSYSERR_NOERROR expected, got %s\n",
                               FUNC14(rc));
                            if (rc==MMSYSERR_NOERROR) {
                                for(nc=0;nc<mixerlineA.cControls;nc++) {
                                    if (winetest_interactive) {
                                        FUNC19("        %d: \"%s\" (%s) ControlID=%d\n", nc,
                                              array[nc].szShortName,
                                              array[nc].szName, array[nc].dwControlID);
                                        FUNC19("            ControlType=%s\n",
                                               FUNC6(array[nc].dwControlType));
                                        FUNC19("            Control=0x%08x(%s)\n",
                                              array[nc].fdwControl,
                                              FUNC5(array[nc].fdwControl));
                                        FUNC19("            Items=%d Min=%d Max=%d Step=%d\n",
                                              array[nc].cMultipleItems,
                                              FUNC3(array[nc].Bounds).dwMinimum,
                                              FUNC3(array[nc].Bounds).dwMaximum,
                                              array[nc].Metrics.cSteps);
                                    }

                                    FUNC13(mix, &array[nc]);
                                }
                            }

                            FUNC2(FUNC0(),0,array);
                        }
                    }
                }
              }
            }
        }
        FUNC18((HMIXER)mix);
    }
}