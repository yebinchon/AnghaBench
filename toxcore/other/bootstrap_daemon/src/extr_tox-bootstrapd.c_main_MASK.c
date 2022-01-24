#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  char uint16_t ;
struct TYPE_11__ {int /*<<< orphan*/  net; int /*<<< orphan*/  self_public_key; int /*<<< orphan*/  self_secret_key; } ;
typedef  int /*<<< orphan*/  TCP_Server ;
typedef  int /*<<< orphan*/  Onion_Announce ;
typedef  int /*<<< orphan*/  Onion ;
typedef  int /*<<< orphan*/  Networking_Core ;
typedef  int /*<<< orphan*/  LOG_BACKEND ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_1__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  DAEMON_NAME ; 
 int /*<<< orphan*/  DAEMON_VERSION_NUMBER ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  LAN_DISCOVERY_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  LOG_BACKEND_STDOUT ; 
 int /*<<< orphan*/  LOG_BACKEND_SYSLOG ; 
 int /*<<< orphan*/  LOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  LOG_LEVEL_INFO ; 
 int /*<<< orphan*/  LOG_LEVEL_WARNING ; 
 int MAX_ALLOWED_PORT ; 
 int MIN_ALLOWED_PORT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC3 (char*,TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char**,char**,int*,int*,int*,int*,int*,char**,int*,int*,char**) ; 
 int /*<<< orphan*/  FUNC11 (int,char**,char**,int /*<<< orphan*/ *,int*) ; 
 char FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char const,TYPE_1__*) ; 
 scalar_t__ FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC30(int argc, char *argv[])
{
    FUNC27(077);
    char *cfg_file_path;
    LOG_BACKEND log_backend;
    bool run_in_foreground;

    // choose backend for printing command line argument parsing output based on whether the daemon is being run from a terminal
    log_backend = FUNC15(STDOUT_FILENO) ? LOG_BACKEND_STDOUT : LOG_BACKEND_SYSLOG;

    FUNC23(log_backend);
    FUNC11(argc, argv, &cfg_file_path, &log_backend, &run_in_foreground);
    FUNC5();

    FUNC23(log_backend);

    FUNC29(LOG_LEVEL_INFO, "Running \"%s\" version %lu.\n", DAEMON_NAME, DAEMON_VERSION_NUMBER);

    char *pid_file_path, *keys_file_path;
    int port;
    int enable_ipv6;
    int enable_ipv4_fallback;
    int enable_lan_discovery;
    int enable_tcp_relay;
    uint16_t *tcp_relay_ports;
    int tcp_relay_port_count;
    int enable_motd;
    char *motd;

    if (FUNC10(cfg_file_path, &pid_file_path, &keys_file_path, &port, &enable_ipv6, &enable_ipv4_fallback,
                           &enable_lan_discovery, &enable_tcp_relay, &tcp_relay_ports, &tcp_relay_port_count, &enable_motd, &motd)) {
        FUNC29(LOG_LEVEL_INFO, "General config read successfully\n");
    } else {
        FUNC29(LOG_LEVEL_ERROR, "Couldn't read config file: %s. Exiting.\n", cfg_file_path);
        return 1;
    }

    if (port < MIN_ALLOWED_PORT || port > MAX_ALLOWED_PORT) {
        FUNC29(LOG_LEVEL_ERROR, "Invalid port: %d, should be in [%d, %d]. Exiting.\n", port, MIN_ALLOWED_PORT,
                  MAX_ALLOWED_PORT);
        return 1;
    }

    if (!run_in_foreground) {
        FUNC6(log_backend, pid_file_path);
    }

    FUNC9(pid_file_path);

    IP ip;
    FUNC13(&ip, enable_ipv6);

    Networking_Core *net = FUNC20(ip, port);

    if (net == NULL) {
        if (enable_ipv6 && enable_ipv4_fallback) {
            FUNC29(LOG_LEVEL_WARNING, "Couldn't initialize IPv6 networking. Falling back to using IPv4.\n");
            enable_ipv6 = 0;
            FUNC13(&ip, enable_ipv6);
            net = FUNC20(ip, port);

            if (net == NULL) {
                FUNC29(LOG_LEVEL_ERROR, "Couldn't fallback to IPv4. Exiting.\n");
                return 1;
            }
        } else {
            FUNC29(LOG_LEVEL_ERROR, "Couldn't initialize networking. Exiting.\n");
            return 1;
        }
    }

    DHT *dht = FUNC18(net);

    if (dht == NULL) {
        FUNC29(LOG_LEVEL_ERROR, "Couldn't initialize Tox DHT instance. Exiting.\n");
        return 1;
    }

    Onion *onion = FUNC21(dht);
    Onion_Announce *onion_a = FUNC22(dht);

    if (!(onion && onion_a)) {
        FUNC29(LOG_LEVEL_ERROR, "Couldn't initialize Tox Onion. Exiting.\n");
        return 1;
    }

    if (enable_motd) {
        if (FUNC4(dht->net, DAEMON_VERSION_NUMBER, (uint8_t *)motd, FUNC26(motd) + 1) == 0) {
            FUNC29(LOG_LEVEL_INFO, "Set MOTD successfully.\n");
        } else {
            FUNC29(LOG_LEVEL_ERROR, "Couldn't set MOTD: %s. Exiting.\n", motd);
            return 1;
        }

        FUNC9(motd);
    }

    if (FUNC16(dht, keys_file_path)) {
        FUNC29(LOG_LEVEL_INFO, "Keys are managed successfully.\n");
    } else {
        FUNC29(LOG_LEVEL_ERROR, "Couldn't read/write: %s. Exiting.\n", keys_file_path);
        return 1;
    }

    FUNC9(keys_file_path);

    TCP_Server *tcp_server = NULL;

    if (enable_tcp_relay) {
        if (tcp_relay_port_count == 0) {
            FUNC29(LOG_LEVEL_ERROR, "No TCP relay ports read. Exiting.\n");
            return 1;
        }

        tcp_server = FUNC19(enable_ipv6, tcp_relay_port_count, tcp_relay_ports, dht->self_secret_key, onion);

        // tcp_relay_port_count != 0 at this point
        FUNC9(tcp_relay_ports);

        if (tcp_server != NULL) {
            FUNC29(LOG_LEVEL_INFO, "Initialized Tox TCP server successfully.\n");
        } else {
            FUNC29(LOG_LEVEL_ERROR, "Couldn't initialize Tox TCP server. Exiting.\n");
            return 1;
        }
    }

    if (FUNC3(cfg_file_path, dht, enable_ipv6)) {
        FUNC29(LOG_LEVEL_INFO, "List of bootstrap nodes read successfully.\n");
    } else {
        FUNC29(LOG_LEVEL_ERROR, "Couldn't read list of bootstrap nodes in %s. Exiting.\n", cfg_file_path);
        return 1;
    }

    FUNC24(dht->self_public_key);

    uint64_t last_LANdiscovery = 0;
    const uint16_t htons_port = FUNC12(port);

    int waiting_for_dht_connection = 1;

    if (enable_lan_discovery) {
        FUNC1(dht);
        FUNC29(LOG_LEVEL_INFO, "Initialized LAN discovery successfully.\n");
    }

    while (1) {
        FUNC7(dht);

        if (enable_lan_discovery && FUNC14(last_LANdiscovery, LAN_DISCOVERY_INTERVAL)) {
            FUNC25(htons_port, dht);
            last_LANdiscovery = FUNC28();
        }

        if (enable_tcp_relay) {
            FUNC8(tcp_server);
        }

        FUNC17(dht->net);

        if (waiting_for_dht_connection && FUNC0(dht)) {
            FUNC29(LOG_LEVEL_INFO, "Connected to another bootstrap node successfully.\n");
            waiting_for_dht_connection = 0;
        }

        FUNC2(30);
    }

    return 1;
}