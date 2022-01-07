
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCSTR ;
typedef int DWORD ;
__attribute__((used)) static LPCSTR dpMsgType2str(DWORD dwType)
{
    switch(dwType)
    {
    case 140: return "DPSYS_CREATEPLAYERORGROUP";
    case 137: return "DPSYS_DESTROYPLAYERORGROUP";
    case 142: return "DPSYS_ADDPLAYERTOGROUP";
    case 138: return "DPSYS_DELETEPLAYERFROMGROUP";
    case 133: return "DPSYS_SESSIONLOST";
    case 136: return "DPSYS_HOST";
    case 131: return "DPSYS_SETPLAYERORGROUPDATA";
    case 130: return "DPSYS_SETPLAYERORGROUPNAME";
    case 129: return "DPSYS_SETSESSIONDESC";
    case 143: return "DPSYS_ADDGROUPTOGROUP";
    case 139: return "DPSYS_DELETEGROUPFROMGROUP";
    case 135: return "DPSYS_SECUREMESSAGE";
    case 128: return "DPSYS_STARTSESSION";
    case 141: return "DPSYS_DPSYS_CHAT";
    case 132: return "DPSYS_SETGROUPOWNER";
    case 134: return "DPSYS_SENDCOMPLETE";

    default: return "UNKNOWN";
    }
}
