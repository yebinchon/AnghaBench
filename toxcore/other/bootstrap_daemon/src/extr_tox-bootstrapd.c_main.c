
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef char uint16_t ;
struct TYPE_11__ {int net; int self_public_key; int self_secret_key; } ;
typedef int TCP_Server ;
typedef int Onion_Announce ;
typedef int Onion ;
typedef int Networking_Core ;
typedef int LOG_BACKEND ;
typedef int IP ;
typedef TYPE_1__ DHT ;


 int DAEMON_NAME ;
 int DAEMON_VERSION_NUMBER ;
 scalar_t__ DHT_isconnected (TYPE_1__*) ;
 int LAN_DISCOVERY_INTERVAL ;
 int LANdiscovery_init (TYPE_1__*) ;
 int LOG_BACKEND_STDOUT ;
 int LOG_BACKEND_SYSLOG ;
 int LOG_LEVEL_ERROR ;
 int LOG_LEVEL_INFO ;
 int LOG_LEVEL_WARNING ;
 int MAX_ALLOWED_PORT ;
 int MIN_ALLOWED_PORT ;
 int SLEEP_MILLISECONDS (int) ;
 int STDOUT_FILENO ;
 scalar_t__ bootstrap_from_config (char*,TYPE_1__*,int) ;
 scalar_t__ bootstrap_set_callbacks (int ,int ,int *,scalar_t__) ;
 int close_log () ;
 int daemonize (int ,char*) ;
 int do_DHT (TYPE_1__*) ;
 int do_TCP_server (int *) ;
 int free (char*) ;
 scalar_t__ get_general_config (char*,char**,char**,int*,int*,int*,int*,int*,char**,int*,int*,char**) ;
 int handle_command_line_arguments (int,char**,char**,int *,int*) ;
 char htons (int) ;
 int ip_init (int *,int) ;
 scalar_t__ is_timeout (int ,int ) ;
 scalar_t__ isatty (int ) ;
 scalar_t__ manage_keys (TYPE_1__*,char*) ;
 int networking_poll (int ) ;
 TYPE_1__* new_DHT (int *) ;
 int * new_TCP_server (int,int,char*,int ,int *) ;
 int * new_networking (int ,int) ;
 int * new_onion (TYPE_1__*) ;
 int * new_onion_announce (TYPE_1__*) ;
 int open_log (int ) ;
 int print_public_key (int ) ;
 int send_LANdiscovery (char const,TYPE_1__*) ;
 scalar_t__ strlen (char*) ;
 int umask (int) ;
 int unix_time () ;
 int write_log (int ,char*,...) ;

int main(int argc, char *argv[])
{
    umask(077);
    char *cfg_file_path;
    LOG_BACKEND log_backend;
    bool run_in_foreground;


    log_backend = isatty(STDOUT_FILENO) ? LOG_BACKEND_STDOUT : LOG_BACKEND_SYSLOG;

    open_log(log_backend);
    handle_command_line_arguments(argc, argv, &cfg_file_path, &log_backend, &run_in_foreground);
    close_log();

    open_log(log_backend);

    write_log(LOG_LEVEL_INFO, "Running \"%s\" version %lu.\n", DAEMON_NAME, DAEMON_VERSION_NUMBER);

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

    if (get_general_config(cfg_file_path, &pid_file_path, &keys_file_path, &port, &enable_ipv6, &enable_ipv4_fallback,
                           &enable_lan_discovery, &enable_tcp_relay, &tcp_relay_ports, &tcp_relay_port_count, &enable_motd, &motd)) {
        write_log(LOG_LEVEL_INFO, "General config read successfully\n");
    } else {
        write_log(LOG_LEVEL_ERROR, "Couldn't read config file: %s. Exiting.\n", cfg_file_path);
        return 1;
    }

    if (port < MIN_ALLOWED_PORT || port > MAX_ALLOWED_PORT) {
        write_log(LOG_LEVEL_ERROR, "Invalid port: %d, should be in [%d, %d]. Exiting.\n", port, MIN_ALLOWED_PORT,
                  MAX_ALLOWED_PORT);
        return 1;
    }

    if (!run_in_foreground) {
        daemonize(log_backend, pid_file_path);
    }

    free(pid_file_path);

    IP ip;
    ip_init(&ip, enable_ipv6);

    Networking_Core *net = new_networking(ip, port);

    if (net == ((void*)0)) {
        if (enable_ipv6 && enable_ipv4_fallback) {
            write_log(LOG_LEVEL_WARNING, "Couldn't initialize IPv6 networking. Falling back to using IPv4.\n");
            enable_ipv6 = 0;
            ip_init(&ip, enable_ipv6);
            net = new_networking(ip, port);

            if (net == ((void*)0)) {
                write_log(LOG_LEVEL_ERROR, "Couldn't fallback to IPv4. Exiting.\n");
                return 1;
            }
        } else {
            write_log(LOG_LEVEL_ERROR, "Couldn't initialize networking. Exiting.\n");
            return 1;
        }
    }

    DHT *dht = new_DHT(net);

    if (dht == ((void*)0)) {
        write_log(LOG_LEVEL_ERROR, "Couldn't initialize Tox DHT instance. Exiting.\n");
        return 1;
    }

    Onion *onion = new_onion(dht);
    Onion_Announce *onion_a = new_onion_announce(dht);

    if (!(onion && onion_a)) {
        write_log(LOG_LEVEL_ERROR, "Couldn't initialize Tox Onion. Exiting.\n");
        return 1;
    }

    if (enable_motd) {
        if (bootstrap_set_callbacks(dht->net, DAEMON_VERSION_NUMBER, (uint8_t *)motd, strlen(motd) + 1) == 0) {
            write_log(LOG_LEVEL_INFO, "Set MOTD successfully.\n");
        } else {
            write_log(LOG_LEVEL_ERROR, "Couldn't set MOTD: %s. Exiting.\n", motd);
            return 1;
        }

        free(motd);
    }

    if (manage_keys(dht, keys_file_path)) {
        write_log(LOG_LEVEL_INFO, "Keys are managed successfully.\n");
    } else {
        write_log(LOG_LEVEL_ERROR, "Couldn't read/write: %s. Exiting.\n", keys_file_path);
        return 1;
    }

    free(keys_file_path);

    TCP_Server *tcp_server = ((void*)0);

    if (enable_tcp_relay) {
        if (tcp_relay_port_count == 0) {
            write_log(LOG_LEVEL_ERROR, "No TCP relay ports read. Exiting.\n");
            return 1;
        }

        tcp_server = new_TCP_server(enable_ipv6, tcp_relay_port_count, tcp_relay_ports, dht->self_secret_key, onion);


        free(tcp_relay_ports);

        if (tcp_server != ((void*)0)) {
            write_log(LOG_LEVEL_INFO, "Initialized Tox TCP server successfully.\n");
        } else {
            write_log(LOG_LEVEL_ERROR, "Couldn't initialize Tox TCP server. Exiting.\n");
            return 1;
        }
    }

    if (bootstrap_from_config(cfg_file_path, dht, enable_ipv6)) {
        write_log(LOG_LEVEL_INFO, "List of bootstrap nodes read successfully.\n");
    } else {
        write_log(LOG_LEVEL_ERROR, "Couldn't read list of bootstrap nodes in %s. Exiting.\n", cfg_file_path);
        return 1;
    }

    print_public_key(dht->self_public_key);

    uint64_t last_LANdiscovery = 0;
    const uint16_t htons_port = htons(port);

    int waiting_for_dht_connection = 1;

    if (enable_lan_discovery) {
        LANdiscovery_init(dht);
        write_log(LOG_LEVEL_INFO, "Initialized LAN discovery successfully.\n");
    }

    while (1) {
        do_DHT(dht);

        if (enable_lan_discovery && is_timeout(last_LANdiscovery, LAN_DISCOVERY_INTERVAL)) {
            send_LANdiscovery(htons_port, dht);
            last_LANdiscovery = unix_time();
        }

        if (enable_tcp_relay) {
            do_TCP_server(tcp_server);
        }

        networking_poll(dht->net);

        if (waiting_for_dht_connection && DHT_isconnected(dht)) {
            write_log(LOG_LEVEL_INFO, "Connected to another bootstrap node successfully.\n");
            waiting_for_dht_connection = 0;
        }

        SLEEP_MILLISECONDS(30);
    }

    return 1;
}
