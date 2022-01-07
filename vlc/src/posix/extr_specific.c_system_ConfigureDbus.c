
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int libvlc_int_t ;
typedef int dbus_bool_t ;
struct TYPE_6__ {char const* const message; } ;
typedef int DBusMessage ;
typedef TYPE_1__ DBusError ;
typedef int DBusConnection ;


 int DBUS_BUS_SESSION ;
 int DBUS_TYPE_BOOLEAN ;
 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_OBJECT_PATH ;
 int DBUS_TYPE_STRING ;
 char* MPRIS_APPEND ;
 int MPRIS_BUS_NAME ;
 int MPRIS_OBJECT_PATH ;
 int MPRIS_TRACKLIST_INTERFACE ;
 int * dbus_bus_get (int ,TYPE_1__*) ;
 int * dbus_connection_send_with_reply_and_block (int *,int *,int,TYPE_1__*) ;
 int dbus_connection_unref (int *) ;
 int dbus_error_free (TYPE_1__*) ;
 int dbus_error_init (TYPE_1__*) ;
 int dbus_message_append_args (int *,int ,char const**,int ,char const**,int ,int const*,int ) ;
 int * dbus_message_new_method_call (int ,int ,int ,char*) ;
 int dbus_message_unref (int *) ;
 int dbus_threads_init_default () ;
 int exit (int ) ;
 int free (char*) ;
 int libvlc_InternalAddIntf (int *,char*) ;
 int msg_Dbg (int *,char*,...) ;
 int msg_Err (int *,char*,char const* const) ;
 int msg_Warn (int *,char*) ;
 int strcmp (char*,int ) ;
 scalar_t__ strstr (char const* const,char*) ;
 scalar_t__ unlikely (int) ;
 char* var_GetString (int *,char*) ;
 scalar_t__ var_InheritBool (int *,char*) ;
 char* vlc_path2uri (char const* const,int *) ;

__attribute__((used)) static void system_ConfigureDbus(libvlc_int_t *vlc, int argc,
                                 const char *const argv[])
{
    (void) vlc; (void) argc; (void) argv;

}
