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
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_ARGS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static gboolean
FUNC2 (const char *magic, int enc_version, const char *random_key,
                       const char *repo_salt,
                       GError **error)
{
    if (!magic) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                     "Magic must be specified");
        return FALSE;
    }

    if (enc_version != 1 && enc_version != 2 && enc_version != 3) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                     "Unsupported enc version");
        return FALSE;
    }

    if (enc_version >= 2) {
        if (!random_key || FUNC1(random_key) != 96) {
            FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                         "Random key not specified");
            return FALSE;
        }
        if (enc_version == 3 && (!(repo_salt) || FUNC1(repo_salt) != 64) ) {
            FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                         "Repo salt not specified");
            return FALSE;
        }
    }

    return TRUE;
}