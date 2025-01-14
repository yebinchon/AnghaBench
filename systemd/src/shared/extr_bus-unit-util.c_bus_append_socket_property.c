
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;


 int EXTRACT_UNQUOTE ;
 int STRLEN (char*) ;
 scalar_t__ STR_IN_SET (char const*,char*,char*,...) ;
 int bus_append_exec_command (int *,char const*,char const*) ;
 int bus_append_ip_tos_from_string (int *,char const*,char const*) ;
 int bus_append_parse_boolean (int *,char const*,char const*) ;
 int bus_append_parse_ip_protocol (int *,char const*,char const*) ;
 int bus_append_parse_mode (int *,char const*,char const*) ;
 int bus_append_parse_sec_rename (int *,char const*,char const*) ;
 int bus_append_parse_size (int *,char const*,char const*,int) ;
 int bus_append_safe_atoi (int *,char const*,char const*) ;
 int bus_append_safe_atoi64 (int *,char const*,char const*) ;
 int bus_append_safe_atou (int *,char const*,char const*) ;
 int bus_append_string (int *,char const*,char const*) ;
 int bus_append_strv (int *,char const*,char const*,int ) ;
 int bus_log_create_error (int) ;
 scalar_t__ isempty (char const*) ;
 int sd_bus_message_append (int *,char*,char*,char*,int,...) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int bus_append_socket_property(sd_bus_message *m, const char *field, const char *eq) {
        int r;

        if (STR_IN_SET(field,
                       "Accept", "Writable", "KeepAlive", "NoDelay", "FreeBind", "Transparent", "Broadcast",
                       "PassCredentials", "PassSecurity", "ReusePort", "RemoveOnStop", "SELinuxContextFromNet"))
                return bus_append_parse_boolean(m, field, eq);

        if (STR_IN_SET(field, "Priority", "IPTTL", "Mark"))
                return bus_append_safe_atoi(m, field, eq);

        if (streq(field, "IPTOS"))
                return bus_append_ip_tos_from_string(m, field, eq);

        if (STR_IN_SET(field, "Backlog", "MaxConnections", "MaxConnectionsPerSource", "KeepAliveProbes", "TriggerLimitBurst"))
                return bus_append_safe_atou(m, field, eq);

        if (STR_IN_SET(field, "SocketMode", "DirectoryMode"))
                return bus_append_parse_mode(m, field, eq);

        if (STR_IN_SET(field, "MessageQueueMaxMessages", "MessageQueueMessageSize"))
                return bus_append_safe_atoi64(m, field, eq);

        if (STR_IN_SET(field, "TimeoutSec", "KeepAliveTimeSec", "KeepAliveIntervalSec", "DeferAcceptSec", "TriggerLimitIntervalSec"))
                return bus_append_parse_sec_rename(m, field, eq);

        if (STR_IN_SET(field, "ReceiveBuffer", "SendBuffer", "PipeSize"))
                return bus_append_parse_size(m, field, eq, 1024);

        if (STR_IN_SET(field, "ExecStartPre", "ExecStartPost", "ExecReload", "ExecStopPost"))
                return bus_append_exec_command(m, field, eq);

        if (STR_IN_SET(field,
                       "SmackLabel", "SmackLabelIPIn", "SmackLabelIPOut", "TCPCongestion",
                       "BindToDevice", "BindIPv6Only", "FileDescriptorName",
                       "SocketUser", "SocketGroup"))
                return bus_append_string(m, field, eq);

        if (streq(field, "Symlinks"))
                return bus_append_strv(m, field, eq, EXTRACT_UNQUOTE);

        if (streq(field, "SocketProtocol"))
                return bus_append_parse_ip_protocol(m, field, eq);

        if (STR_IN_SET(field,
                       "ListenStream", "ListenDatagram", "ListenSequentialPacket", "ListenNetlink",
                       "ListenSpecial", "ListenMessageQueue", "ListenFIFO", "ListenUSBFunction")) {
                if (isempty(eq))
                        r = sd_bus_message_append(m, "(sv)", "Listen", "a(ss)", 0);
                else
                        r = sd_bus_message_append(m, "(sv)", "Listen", "a(ss)", 1, field + STRLEN("Listen"), eq);
                if (r < 0)
                        return bus_log_create_error(r);

                return 1;
        }

        return 0;
}
