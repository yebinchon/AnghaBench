
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char const vlc_object_t ;
typedef char WCHAR ;
struct TYPE_3__ {char* lpstrElementName; int wDeviceID; scalar_t__ lpstrDeviceType; } ;
typedef TYPE_1__ MCI_OPEN_PARMS ;
typedef scalar_t__ LPCTSTR ;
typedef int DWORD ;


 int CDROMEJECT ;
 scalar_t__ EjectSCSI (int) ;
 int MCI_CLOSE ;
 scalar_t__ MCI_DEVTYPE_CD_AUDIO ;
 int MCI_OPEN ;
 int MCI_OPEN_ELEMENT ;
 int MCI_OPEN_SHAREABLE ;
 int MCI_OPEN_TYPE ;
 int MCI_OPEN_TYPE_ID ;
 int MCI_SET ;
 int MCI_SET_DOOR_OPEN ;
 int MCI_WAIT ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int TEXT (char*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (char const*) ;
 scalar_t__ ioctl (int,int ,int ) ;
 scalar_t__ mciSendCommand (int ,int ,int,uintptr_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int msg_Err (char const*,char*,char const*) ;
 int msg_Warn (char const*,char*) ;
 int vlc_close (int) ;
 int vlc_open (char const*,int) ;
 int wcscpy (char*,int ) ;

__attribute__((used)) static int intf_Eject( vlc_object_t *p_this, const char *psz_device )
{
    VLC_UNUSED(p_this);
    int fd = vlc_open( psz_device, O_RDONLY | O_NONBLOCK );
    if( fd == -1 )
    {
        msg_Err( p_this, "could not open device %s", psz_device );
        return VLC_EGENERIC;
    }



    if( ioctl( fd, CDROMEJECT, 0 ) < 0
     && EjectSCSI( fd ) )



    {
        msg_Err( p_this, "could not eject %s", psz_device );
        vlc_close( fd );
        return VLC_EGENERIC;
    }
    vlc_close( fd );
    return VLC_SUCCESS;






}
