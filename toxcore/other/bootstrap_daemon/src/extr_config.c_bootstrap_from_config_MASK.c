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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  config_t ;
typedef  int /*<<< orphan*/  config_setting_t ;
typedef  int /*<<< orphan*/  DHT ;

/* Variables and functions */
 scalar_t__ CONFIG_FALSE ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_LEVEL_ERROR ; 
 int /*<<< orphan*/  LOG_LEVEL_INFO ; 
 int /*<<< orphan*/  LOG_LEVEL_WARNING ; 
 int MAX_ALLOWED_PORT ; 
 int MIN_ALLOWED_PORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC18(const char *cfg_file_path, DHT *dht, int enable_ipv6)
{
    const char *NAME_BOOTSTRAP_NODES = "bootstrap_nodes";

    const char *NAME_PUBLIC_KEY = "public_key";
    const char *NAME_PORT       = "port";
    const char *NAME_ADDRESS    = "address";

    config_t cfg;

    FUNC5(&cfg);

    if (FUNC7(&cfg, cfg_file_path) == CONFIG_FALSE) {
        FUNC17(LOG_LEVEL_ERROR, "%s:%d - %s\n", FUNC2(&cfg), FUNC3(&cfg), FUNC4(&cfg));
        FUNC1(&cfg);
        return 0;
    }

    config_setting_t *node_list = FUNC6(&cfg, NAME_BOOTSTRAP_NODES);

    if (node_list == NULL) {
        FUNC17(LOG_LEVEL_WARNING, "No '%s' setting in the configuration file. Skipping bootstrapping.\n",
                  NAME_BOOTSTRAP_NODES);
        FUNC1(&cfg);
        return 1;
    }

    if (FUNC9(node_list) == 0) {
        FUNC17(LOG_LEVEL_WARNING, "No bootstrap nodes found. Skipping bootstrapping.\n");
        FUNC1(&cfg);
        return 1;
    }

    int bs_port;
    const char *bs_address;
    const char *bs_public_key;

    config_setting_t *node;

    int i = 0;

    while (FUNC9(node_list)) {

        node = FUNC8(node_list, 0);

        if (node == NULL) {
            FUNC1(&cfg);
            return 0;
        }

        // Check that all settings are present
        if (FUNC11(node, NAME_PUBLIC_KEY, &bs_public_key) == CONFIG_FALSE) {
            FUNC17(LOG_LEVEL_WARNING, "Bootstrap node #%d: Couldn't find '%s' setting. Skipping the node.\n", i,
                      NAME_PUBLIC_KEY);
            goto next;
        }

        if (FUNC10(node, NAME_PORT, &bs_port) == CONFIG_FALSE) {
            FUNC17(LOG_LEVEL_WARNING, "Bootstrap node #%d: Couldn't find '%s' setting. Skipping the node.\n", i, NAME_PORT);
            goto next;
        }

        if (FUNC11(node, NAME_ADDRESS, &bs_address) == CONFIG_FALSE) {
            FUNC17(LOG_LEVEL_WARNING, "Bootstrap node #%d: Couldn't find '%s' setting. Skipping the node.\n", i, NAME_ADDRESS);
            goto next;
        }

        // Process settings
        if (FUNC16(bs_public_key) != crypto_box_PUBLICKEYBYTES * 2) {
            FUNC17(LOG_LEVEL_WARNING, "Bootstrap node #%d: Invalid '%s': %s. Skipping the node.\n", i, NAME_PUBLIC_KEY,
                      bs_public_key);
            goto next;
        }

        if (bs_port < MIN_ALLOWED_PORT || bs_port > MAX_ALLOWED_PORT) {
            FUNC17(LOG_LEVEL_WARNING, "Bootstrap node #%d: Invalid '%s': %d, should be in [%d, %d]. Skipping the node.\n", i,
                      NAME_PORT,
                      bs_port, MIN_ALLOWED_PORT, MAX_ALLOWED_PORT);
            goto next;
        }

        uint8_t *bs_public_key_bin = FUNC14((char *)bs_public_key);
        const int address_resolved = FUNC0(dht, bs_address, enable_ipv6, FUNC15(bs_port),
                                     bs_public_key_bin);
        FUNC13(bs_public_key_bin);

        if (!address_resolved) {
            FUNC17(LOG_LEVEL_WARNING, "Bootstrap node #%d: Invalid '%s': %s. Skipping the node.\n", i, NAME_ADDRESS, bs_address);
            goto next;
        }

        FUNC17(LOG_LEVEL_INFO, "Successfully added bootstrap node #%d: %s:%d %s\n", i, bs_address, bs_port, bs_public_key);

next:
        // config_setting_lookup_string() allocates string inside and doesn't allow us to free it direcly
        // though it's freed when the element is removed, so we free it right away in order to keep memory
        // consumption minimal
        FUNC12(node_list, 0);
        i++;
    }

    FUNC1(&cfg);

    return 1;
}