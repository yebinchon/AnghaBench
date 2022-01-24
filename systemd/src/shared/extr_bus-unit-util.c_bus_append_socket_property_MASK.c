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
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 int /*<<< orphan*/  EXTRACT_UNQUOTE ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char*,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,char const*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC12 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC13 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 
 scalar_t__ FUNC15 (char const*) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*,char*,char*,int,...) ; 
 scalar_t__ FUNC17 (char const*,char*) ; 

__attribute__((used)) static int FUNC18(sd_bus_message *m, const char *field, const char *eq) {
        int r;

        if (FUNC1(field,
                       "Accept", "Writable", "KeepAlive", "NoDelay", "FreeBind", "Transparent", "Broadcast",
                       "PassCredentials", "PassSecurity", "ReusePort", "RemoveOnStop", "SELinuxContextFromNet"))
                return FUNC4(m, field, eq);

        if (FUNC1(field, "Priority", "IPTTL", "Mark"))
                return FUNC9(m, field, eq);

        if (FUNC17(field, "IPTOS"))
                return FUNC3(m, field, eq);

        if (FUNC1(field, "Backlog", "MaxConnections", "MaxConnectionsPerSource", "KeepAliveProbes", "TriggerLimitBurst"))
                return FUNC11(m, field, eq);

        if (FUNC1(field, "SocketMode", "DirectoryMode"))
                return FUNC6(m, field, eq);

        if (FUNC1(field, "MessageQueueMaxMessages", "MessageQueueMessageSize"))
                return FUNC10(m, field, eq);

        if (FUNC1(field, "TimeoutSec", "KeepAliveTimeSec", "KeepAliveIntervalSec", "DeferAcceptSec", "TriggerLimitIntervalSec"))
                return FUNC7(m, field, eq);

        if (FUNC1(field, "ReceiveBuffer", "SendBuffer", "PipeSize"))
                return FUNC8(m, field, eq, 1024);

        if (FUNC1(field, "ExecStartPre", "ExecStartPost", "ExecReload", "ExecStopPost"))
                return FUNC2(m, field, eq);

        if (FUNC1(field,
                       "SmackLabel", "SmackLabelIPIn", "SmackLabelIPOut", "TCPCongestion",
                       "BindToDevice", "BindIPv6Only", "FileDescriptorName",
                       "SocketUser", "SocketGroup"))
                return FUNC12(m, field, eq);

        if (FUNC17(field, "Symlinks"))
                return FUNC13(m, field, eq, EXTRACT_UNQUOTE);

        if (FUNC17(field, "SocketProtocol"))
                return FUNC5(m, field, eq);

        if (FUNC1(field,
                       "ListenStream", "ListenDatagram", "ListenSequentialPacket", "ListenNetlink",
                       "ListenSpecial", "ListenMessageQueue", "ListenFIFO", "ListenUSBFunction")) {
                if (FUNC15(eq))
                        r = FUNC16(m, "(sv)", "Listen", "a(ss)", 0);
                else
                        r = FUNC16(m, "(sv)", "Listen", "a(ss)", 1, field + FUNC0("Listen"), eq);
                if (r < 0)
                        return FUNC14(r);

                return 1;
        }

        return 0;
}