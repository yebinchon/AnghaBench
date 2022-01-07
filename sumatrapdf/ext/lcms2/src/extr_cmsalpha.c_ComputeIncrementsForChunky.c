
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int channels ;


 int T_CHANNELS (int) ;
 scalar_t__ T_DOSWAP (int) ;
 int T_EXTRA (int) ;
 scalar_t__ T_SWAPFIRST (int) ;
 int cmsMAXEXTRACHANNELS ;
 int memset (int*,int ,int) ;
 int trueBytesSize (int) ;

__attribute__((used)) static
void ComputeIncrementsForChunky(cmsUInt32Number Format,
                                cmsUInt32Number ComponentStartingOrder[],
                                cmsUInt32Number ComponentPointerIncrements[])
{
       cmsUInt32Number channels[cmsMAXEXTRACHANNELS];
       cmsUInt32Number extra = T_EXTRA(Format);
       cmsUInt32Number nchannels = T_CHANNELS(Format);
       cmsUInt32Number total_chans = nchannels + extra;
       cmsUInt32Number i;
       cmsUInt32Number channelSize = trueBytesSize(Format);
       cmsUInt32Number pixelSize = channelSize * total_chans;


    if (total_chans <= 0 || total_chans >= cmsMAXEXTRACHANNELS)
     return;

        memset(channels, 0, sizeof(channels));


       for (i = 0; i < extra; i++)
              ComponentPointerIncrements[i] = pixelSize;


       for (i = 0; i < total_chans; i++)
       {
              if (T_DOSWAP(Format)) {
                     channels[i] = total_chans - i - 1;
              }
              else {
                     channels[i] = i;
              }
       }


       if (T_SWAPFIRST(Format) && total_chans > 1) {

              cmsUInt32Number tmp = channels[0];
              for (i = 0; i < total_chans-1; i++)
                     channels[i] = channels[i + 1];

              channels[total_chans - 1] = tmp;
       }


       if (channelSize > 1)
              for (i = 0; i < total_chans; i++) {
                     channels[i] *= channelSize;
              }

       for (i = 0; i < extra; i++)
              ComponentStartingOrder[i] = channels[i + nchannels];
}
