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
typedef  int /*<<< orphan*/  intf_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2( intf_thread_t *p_intf)
{
    FUNC1("%s", FUNC0("+----[ Remote control commands ]"));
    FUNC1(  "| ");
    FUNC1("%s", FUNC0("| add XYZ  . . . . . . . . . . . . add XYZ to playlist"));
    FUNC1("%s", FUNC0("| enqueue XYZ  . . . . . . . . . queue XYZ to playlist"));
    FUNC1("%s", FUNC0("| playlist . . . . .  show items currently in playlist"));
    FUNC1("%s", FUNC0("| play . . . . . . . . . . . . . . . . . . play stream"));
    FUNC1("%s", FUNC0("| stop . . . . . . . . . . . . . . . . . . stop stream"));
    FUNC1("%s", FUNC0("| next . . . . . . . . . . . . . .  next playlist item"));
    FUNC1("%s", FUNC0("| prev . . . . . . . . . . . .  previous playlist item"));
    FUNC1("%s", FUNC0("| goto . . . . . . . . . . . . . .  goto item at index"));
    FUNC1("%s", FUNC0("| repeat [on|off] . . . .  toggle playlist item repeat"));
    FUNC1("%s", FUNC0("| loop [on|off] . . . . . . . . . toggle playlist loop"));
    FUNC1("%s", FUNC0("| random [on|off] . . . . . . .  toggle random jumping"));
    FUNC1("%s", FUNC0("| clear . . . . . . . . . . . . . . clear the playlist"));
    FUNC1("%s", FUNC0("| status . . . . . . . . . . . current playlist status"));
    FUNC1("%s", FUNC0("| title [X]  . . . . . . set/get title in current item"));
    FUNC1("%s", FUNC0("| title_n  . . . . . . . .  next title in current item"));
    FUNC1("%s", FUNC0("| title_p  . . . . . .  previous title in current item"));
    FUNC1("%s", FUNC0("| chapter [X]  . . . . set/get chapter in current item"));
    FUNC1("%s", FUNC0("| chapter_n  . . . . . .  next chapter in current item"));
    FUNC1("%s", FUNC0("| chapter_p  . . . .  previous chapter in current item"));
    FUNC1(  "| ");
    FUNC1("%s", FUNC0("| seek X . . . seek in seconds, for instance `seek 12'"));
    FUNC1("%s", FUNC0("| pause  . . . . . . . . . . . . . . . .  toggle pause"));
    FUNC1("%s", FUNC0("| fastforward  . . . . . . . .  .  set to maximum rate"));
    FUNC1("%s", FUNC0("| rewind  . . . . . . . . . . . .  set to minimum rate"));
    FUNC1("%s", FUNC0("| faster . . . . . . . . . .  faster playing of stream"));
    FUNC1("%s", FUNC0("| slower . . . . . . . . . .  slower playing of stream"));
    FUNC1("%s", FUNC0("| normal . . . . . . . . . .  normal playing of stream"));
    FUNC1("%s", FUNC0("| frame. . . . . . . . . .  play frame by frame"));
    FUNC1("%s", FUNC0("| f [on|off] . . . . . . . . . . . . toggle fullscreen"));
    FUNC1("%s", FUNC0("| info . . . . .  information about the current stream"));
    FUNC1("%s", FUNC0("| stats  . . . . . . . .  show statistical information"));
    FUNC1("%s", FUNC0("| get_time . . seconds elapsed since stream's beginning"));
    FUNC1("%s", FUNC0("| is_playing . . . .  1 if a stream plays, 0 otherwise"));
    FUNC1("%s", FUNC0("| get_title . . . . .  the title of the current stream"));
    FUNC1("%s", FUNC0("| get_length . . . .  the length of the current stream"));
    FUNC1(  "| ");
    FUNC1("%s", FUNC0("| volume [X] . . . . . . . . . .  set/get audio volume"));
    FUNC1("%s", FUNC0("| volup [X]  . . . . . . .  raise audio volume X steps"));
    FUNC1("%s", FUNC0("| voldown [X]  . . . . . .  lower audio volume X steps"));
    FUNC1("%s", FUNC0("| adev [device]  . . . . . . . .  set/get audio device"));
    FUNC1("%s", FUNC0("| achan [X]. . . . . . . . . .  set/get audio channels"));
    FUNC1("%s", FUNC0("| atrack [X] . . . . . . . . . . . set/get audio track"));
    FUNC1("%s", FUNC0("| vtrack [X] . . . . . . . . . . . set/get video track"));
    FUNC1("%s", FUNC0("| vratio [X]  . . . . . . . set/get video aspect ratio"));
    FUNC1("%s", FUNC0("| vcrop [X]  . . . . . . . . . . .  set/get video crop"));
    FUNC1("%s", FUNC0("| vzoom [X]  . . . . . . . . . . .  set/get video zoom"));
    FUNC1("%s", FUNC0("| snapshot . . . . . . . . . . . . take video snapshot"));
    FUNC1("%s", FUNC0("| record [on|off] . . . . . . . . . . toggle recording"));
    FUNC1("%s", FUNC0("| strack [X] . . . . . . . . .  set/get subtitle track"));
    FUNC1("%s", FUNC0("| key [hotkey name] . . . . . .  simulate hotkey press"));
    FUNC1(  "| ");
    FUNC1("%s", FUNC0("| help . . . . . . . . . . . . . . . this help message"));
    FUNC1("%s", FUNC0("| logout . . . . . . .  exit (if in socket connection)"));
    FUNC1("%s", FUNC0("| quit . . . . . . . . . . . . . . . . . . .  quit vlc"));
    FUNC1(  "| ");
    FUNC1("%s", FUNC0("+----[ end of help ]"));
}