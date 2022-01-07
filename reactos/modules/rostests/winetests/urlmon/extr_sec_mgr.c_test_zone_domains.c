
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_ie_hardened () ;
 int pCreateUri ;
 int register_zone_domains () ;
 int run_child_process () ;
 int skip (char*) ;
 int test_zone_domain_cache () ;
 int trace (char*) ;
 int unregister_zone_domains () ;
 int win_skip (char*) ;

__attribute__((used)) static void test_zone_domains(void)
{
    if(is_ie_hardened()) {
        skip("IE running in Enhanced Security Configuration\n");
        return;
    } else if(!pCreateUri) {
        win_skip("Skipping zone domain tests, IE too old\n");
        return;
    }

    trace("testing zone domains...\n");

    test_zone_domain_cache();

    if (!register_zone_domains()) return;
    run_child_process();
    unregister_zone_domains();
}
