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
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  channels ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int cmsMAXEXTRACHANNELS ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static
void FUNC6(cmsUInt32Number Format,
                                cmsUInt32Number BytesPerPlane,
                                cmsUInt32Number ComponentStartingOrder[],
                                cmsUInt32Number ComponentPointerIncrements[])
{
       cmsUInt32Number channels[cmsMAXEXTRACHANNELS];
       cmsUInt32Number extra = FUNC2(Format);
       cmsUInt32Number nchannels = FUNC0(Format);
       cmsUInt32Number total_chans = nchannels + extra;
       cmsUInt32Number i;
       cmsUInt32Number channelSize = FUNC5(Format);

       // Sanity check
       if (total_chans <= 0 || total_chans >= cmsMAXEXTRACHANNELS)
           return;

       FUNC4(channels, 0, sizeof(channels));

       // Separation is independent of starting point and only depends on channel size
       for (i = 0; i < extra; i++)
              ComponentPointerIncrements[i] = channelSize;

       // Handle do swap
       for (i = 0; i < total_chans; i++)
       {
              if (FUNC1(Format)) {
                     channels[i] = total_chans - i - 1;
              }
              else {
                     channels[i] = i;
              }
       }

       // Handle swap first (ROL of positions), example CMYK -> KCMY | 0123 -> 3012
       if (FUNC3(Format) && total_chans > 0) {

              cmsUInt32Number tmp = channels[0];
              for (i = 0; i < total_chans - 1; i++)
                     channels[i] = channels[i + 1];

              channels[total_chans - 1] = tmp;
       }

       // Handle size
       for (i = 0; i < total_chans; i++) {
              channels[i] *= BytesPerPlane;
       }

       for (i = 0; i < extra; i++)
              ComponentStartingOrder[i] = channels[i + nchannels];
}