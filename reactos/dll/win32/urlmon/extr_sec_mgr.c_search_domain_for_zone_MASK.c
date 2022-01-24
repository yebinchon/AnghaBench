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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  E_UNEXPECTED ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC13(HKEY domains, LPCWSTR domain, DWORD domain_len, LPCWSTR schema,
                                      LPCWSTR host, DWORD host_len, DWORD *zone)
{
    BOOL found = FALSE;
    HKEY domain_key;
    DWORD res;
    LPCWSTR matched;

    if(host_len >= domain_len && FUNC11(domain, host, TRUE, &matched)) {
        res = FUNC3(domains, domain, &domain_key);
        if(res != ERROR_SUCCESS) {
            FUNC0("Failed to open domain key %s: %d\n", FUNC5(domain), res);
            return E_UNEXPECTED;
        }

        if(matched == host)
            found = FUNC7(domain_key, schema, zone);
        else {
            INT domain_offset;
            DWORD subdomain_count, subdomain_len;
            BOOL check_domain = TRUE;

            FUNC6(domain, domain_len, &domain_offset);

            res = FUNC4(domain_key, NULL, NULL, NULL, &subdomain_count, &subdomain_len,
                                   NULL, NULL, NULL, NULL, NULL, NULL);
            if(res != ERROR_SUCCESS) {
                FUNC0("Unable to query info for key %s: %d\n", FUNC5(domain), res);
                FUNC1(domain_key);
                return E_UNEXPECTED;
            }

            if(subdomain_count) {
                WCHAR *subdomain;
                WCHAR *component;
                DWORD i;

                subdomain = FUNC8((subdomain_len+1)*sizeof(WCHAR));
                if(!subdomain) {
                    FUNC1(domain_key);
                    return E_OUTOFMEMORY;
                }

                component = FUNC10(host, matched-host-1);
                if(!component) {
                    FUNC9(subdomain);
                    FUNC1(domain_key);
                    return E_OUTOFMEMORY;
                }

                for(i = 0; i < subdomain_count; ++i) {
                    DWORD len = subdomain_len+1;
                    const WCHAR *sub_matched;

                    res = FUNC2(domain_key, i, subdomain, &len, NULL, NULL, NULL, NULL);
                    if(res != ERROR_SUCCESS) {
                        FUNC9(component);
                        FUNC9(subdomain);
                        FUNC1(domain_key);
                        return E_UNEXPECTED;
                    }

                    if(FUNC11(subdomain, component, FALSE, &sub_matched)) {
                        HKEY subdomain_key;

                        res = FUNC3(domain_key, subdomain, &subdomain_key);
                        if(res != ERROR_SUCCESS) {
                            FUNC0("Unable to open subdomain key %s of %s: %d\n", FUNC5(subdomain),
                                FUNC5(domain), res);
                            FUNC9(component);
                            FUNC9(subdomain);
                            FUNC1(domain_key);
                            return E_UNEXPECTED;
                        }

                        found = FUNC7(subdomain_key, schema, zone);
                        check_domain = FALSE;
                        FUNC1(subdomain_key);
                        break;
                    }
                }
                FUNC9(subdomain);
                FUNC9(component);
            }

            /* There's a chance that 'host' implicitly mapped into 'domain', in
             * which case we check to see if 'domain' contains zone information.
             *
             * This can only happen if 'domain' is its own domain name.
             *  Example:
             *      "google.com" (domain name = "google.com")
             *
             *  So if:
             *      host = "www.google.com"
             *
             *  Then host would map directly into the "google.com" domain key.
             *
             * If 'domain' has more than just its domain name, or it does not
             * have a domain name, then we don't perform the check. The reason
             * for this is that these domains don't allow implicit mappings.
             *  Example:
             *      domain = "org" (has no domain name)
             *      host   = "www.org"
             *
             *  The mapping would only happen if the "org" key had an explicit subkey
             *  called "www".
             */
            if(check_domain && !domain_offset && !FUNC12(host, matched-host-1))
                found = FUNC7(domain_key, schema, zone);
        }
        FUNC1(domain_key);
    }

    return found ? S_OK : S_FALSE;
}