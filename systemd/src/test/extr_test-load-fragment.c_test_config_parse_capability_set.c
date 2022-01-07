
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CAP_NET_ADMIN ;
 int CAP_NET_RAW ;
 int UINT64_C (int ) ;
 int assert_se (int) ;
 int cap_test_all (int) ;
 int config_parse_capability_set (int *,char*,int,char*,int,char*,int ,char*,int*,int *) ;
 int make_cap (int ) ;

__attribute__((used)) static void test_config_parse_capability_set(void) {
        int r;
        uint64_t capability_bounding_set = 0;

        r = config_parse_capability_set(((void*)0), "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "CAP_NET_RAW",
                              &capability_bounding_set, ((void*)0));
        assert_se(r >= 0);
        assert_se(capability_bounding_set == make_cap(CAP_NET_RAW));

        r = config_parse_capability_set(((void*)0), "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "CAP_NET_ADMIN",
                              &capability_bounding_set, ((void*)0));
        assert_se(r >= 0);
        assert_se(capability_bounding_set == (make_cap(CAP_NET_RAW) | make_cap(CAP_NET_ADMIN)));

        r = config_parse_capability_set(((void*)0), "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "~CAP_NET_ADMIN",
                              &capability_bounding_set, ((void*)0));
        assert_se(r >= 0);
        assert_se(capability_bounding_set == make_cap(CAP_NET_RAW));

        r = config_parse_capability_set(((void*)0), "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "",
                              &capability_bounding_set, ((void*)0));
        assert_se(r >= 0);
        assert_se(capability_bounding_set == UINT64_C(0));

        r = config_parse_capability_set(((void*)0), "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "~",
                              &capability_bounding_set, ((void*)0));
        assert_se(r >= 0);
        assert_se(cap_test_all(capability_bounding_set));

        capability_bounding_set = 0;
        r = config_parse_capability_set(((void*)0), "fake", 1, "section", 1,
                              "CapabilityBoundingSet", 0, "  'CAP_NET_RAW' WAT_CAP??? CAP_NET_ADMIN CAP'_trailing_garbage",
                              &capability_bounding_set, ((void*)0));
        assert_se(r >= 0);
        assert_se(capability_bounding_set == (make_cap(CAP_NET_RAW) | make_cap(CAP_NET_ADMIN)));
}
