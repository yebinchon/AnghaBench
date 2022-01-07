
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *vfslog_eventname(int eEvent){
  const char *zEvent = 0;

  switch( eEvent ){
    case 148: zEvent = "xClose"; break;
    case 138: zEvent = "xRead"; break;
    case 128: zEvent = "xWrite"; break;
    case 130: zEvent = "xTruncate"; break;
    case 131: zEvent = "xSync"; break;
    case 143: zEvent = "xFilesize"; break;
    case 141: zEvent = "xLock"; break;
    case 129: zEvent = "xUnlock"; break;
    case 149: zEvent = "xCheckResLock"; break;
    case 144: zEvent = "xFileControl"; break;
    case 137: zEvent = "xSectorSize"; break;
    case 145: zEvent = "xDeviceChar"; break;
    case 140: zEvent = "xOpen"; break;
    case 146: zEvent = "xDelete"; break;
    case 151: zEvent = "xAccess"; break;
    case 142: zEvent = "xFullPathname"; break;
    case 139: zEvent = "xRandomness"; break;
    case 132: zEvent = "xSleep"; break;
    case 147: zEvent = "xCurrentTime"; break;

    case 133: zEvent = "xShmUnmap"; break;
    case 135: zEvent = "xShmLock"; break;
    case 136: zEvent = "xShmBarrier"; break;
    case 134: zEvent = "xShmMap"; break;

    case 150: zEvent = "annotation"; break;
  }

  return zEvent;
}
