
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int config_t ;
typedef int config_setting_t ;
typedef int DHT ;


 scalar_t__ CONFIG_FALSE ;
 int DHT_bootstrap_from_address (int *,char const*,int,int ,int *) ;
 int LOG_LEVEL_ERROR ;
 int LOG_LEVEL_INFO ;
 int LOG_LEVEL_WARNING ;
 int MAX_ALLOWED_PORT ;
 int MIN_ALLOWED_PORT ;
 int config_destroy (int *) ;
 int config_error_file (int *) ;
 int config_error_line (int *) ;
 int config_error_text (int *) ;
 int config_init (int *) ;
 int * config_lookup (int *,char const*) ;
 scalar_t__ config_read_file (int *,char const*) ;
 int * config_setting_get_elem (int *,int ) ;
 scalar_t__ config_setting_length (int *) ;
 scalar_t__ config_setting_lookup_int (int *,char const*,int*) ;
 scalar_t__ config_setting_lookup_string (int *,char const*,char const**) ;
 int config_setting_remove_elem (int *,int ) ;
 int crypto_box_PUBLICKEYBYTES ;
 int free (int *) ;
 int * hex_string_to_bin (char*) ;
 int htons (int) ;
 int strlen (char const*) ;
 int write_log (int ,char*,...) ;

int bootstrap_from_config(const char *cfg_file_path, DHT *dht, int enable_ipv6)
{
    const char *NAME_BOOTSTRAP_NODES = "bootstrap_nodes";

    const char *NAME_PUBLIC_KEY = "public_key";
    const char *NAME_PORT = "port";
    const char *NAME_ADDRESS = "address";

    config_t cfg;

    config_init(&cfg);

    if (config_read_file(&cfg, cfg_file_path) == CONFIG_FALSE) {
        write_log(LOG_LEVEL_ERROR, "%s:%d - %s\n", config_error_file(&cfg), config_error_line(&cfg), config_error_text(&cfg));
        config_destroy(&cfg);
        return 0;
    }

    config_setting_t *node_list = config_lookup(&cfg, NAME_BOOTSTRAP_NODES);

    if (node_list == ((void*)0)) {
        write_log(LOG_LEVEL_WARNING, "No '%s' setting in the configuration file. Skipping bootstrapping.\n",
                  NAME_BOOTSTRAP_NODES);
        config_destroy(&cfg);
        return 1;
    }

    if (config_setting_length(node_list) == 0) {
        write_log(LOG_LEVEL_WARNING, "No bootstrap nodes found. Skipping bootstrapping.\n");
        config_destroy(&cfg);
        return 1;
    }

    int bs_port;
    const char *bs_address;
    const char *bs_public_key;

    config_setting_t *node;

    int i = 0;

    while (config_setting_length(node_list)) {

        node = config_setting_get_elem(node_list, 0);

        if (node == ((void*)0)) {
            config_destroy(&cfg);
            return 0;
        }


        if (config_setting_lookup_string(node, NAME_PUBLIC_KEY, &bs_public_key) == CONFIG_FALSE) {
            write_log(LOG_LEVEL_WARNING, "Bootstrap node #%d: Couldn't find '%s' setting. Skipping the node.\n", i,
                      NAME_PUBLIC_KEY);
            goto next;
        }

        if (config_setting_lookup_int(node, NAME_PORT, &bs_port) == CONFIG_FALSE) {
            write_log(LOG_LEVEL_WARNING, "Bootstrap node #%d: Couldn't find '%s' setting. Skipping the node.\n", i, NAME_PORT);
            goto next;
        }

        if (config_setting_lookup_string(node, NAME_ADDRESS, &bs_address) == CONFIG_FALSE) {
            write_log(LOG_LEVEL_WARNING, "Bootstrap node #%d: Couldn't find '%s' setting. Skipping the node.\n", i, NAME_ADDRESS);
            goto next;
        }


        if (strlen(bs_public_key) != crypto_box_PUBLICKEYBYTES * 2) {
            write_log(LOG_LEVEL_WARNING, "Bootstrap node #%d: Invalid '%s': %s. Skipping the node.\n", i, NAME_PUBLIC_KEY,
                      bs_public_key);
            goto next;
        }

        if (bs_port < MIN_ALLOWED_PORT || bs_port > MAX_ALLOWED_PORT) {
            write_log(LOG_LEVEL_WARNING, "Bootstrap node #%d: Invalid '%s': %d, should be in [%d, %d]. Skipping the node.\n", i,
                      NAME_PORT,
                      bs_port, MIN_ALLOWED_PORT, MAX_ALLOWED_PORT);
            goto next;
        }

        uint8_t *bs_public_key_bin = hex_string_to_bin((char *)bs_public_key);
        const int address_resolved = DHT_bootstrap_from_address(dht, bs_address, enable_ipv6, htons(bs_port),
                                     bs_public_key_bin);
        free(bs_public_key_bin);

        if (!address_resolved) {
            write_log(LOG_LEVEL_WARNING, "Bootstrap node #%d: Invalid '%s': %s. Skipping the node.\n", i, NAME_ADDRESS, bs_address);
            goto next;
        }

        write_log(LOG_LEVEL_INFO, "Successfully added bootstrap node #%d: %s:%d %s\n", i, bs_address, bs_port, bs_public_key);

next:



        config_setting_remove_elem(node_list, 0);
        i++;
    }

    config_destroy(&cfg);

    return 1;
}
