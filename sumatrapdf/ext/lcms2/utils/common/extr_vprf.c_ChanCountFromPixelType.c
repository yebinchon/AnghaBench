
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FatalError (char*,int) ;
int ChanCountFromPixelType(int ColorChannels)
{
    switch (ColorChannels) {

      case 146: return 1;

      case 130:
      case 148:
      case 145:
      case 128:
      case 129: return 3;

      case 147: return 4 ;
      case 138: return 2 ;
      case 137: return 3 ;
      case 136: return 4 ;
      case 135: return 5 ;
      case 134: return 6 ;
      case 133: return 7 ;
      case 132: return 8 ;
      case 131: return 9 ;
      case 144: return 10;
      case 143: return 11;
      case 142: return 12;
      case 141: return 12;
      case 140: return 14;
      case 139: return 15;

      default:

          FatalError("Unsupported color space of %d channels", ColorChannels);
          return -1;
    }
}
