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
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sd_lldp_neighbor ;
typedef  int /*<<< orphan*/  sd_lldp ;
typedef  int /*<<< orphan*/  sd_event ;
typedef  int /*<<< orphan*/  frame6 ;
typedef  int /*<<< orphan*/  frame5 ;
typedef  int /*<<< orphan*/  frame4 ;
typedef  int /*<<< orphan*/  frame3 ;
typedef  int /*<<< orphan*/  frame2 ;
typedef  int /*<<< orphan*/  frame1 ;

/* Variables and functions */
 int SD_LLDP_CHASSIS_SUBTYPE_CHASSIS_COMPONENT ; 
 int SD_LLDP_PORT_SUBTYPE_PORT_COMPONENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  lldp_handler ; 
 int lldp_handler_calls ; 
 scalar_t__ FUNC2 (void const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*,void const**,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,void const**,size_t*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 size_t FUNC11 (char const*) ; 
 int /*<<< orphan*/ * test_fd ; 
 int FUNC12 (int /*<<< orphan*/ ,int const*,int) ; 

__attribute__((used)) static void FUNC13(sd_event *e) {

        static const uint8_t frame1[] = {
                /* Ethernet header */
                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,     /* Destination MAC */
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,     /* Source MAC */
                0x88, 0xcc,                             /* Ethertype */
                /* LLDP mandatory TLVs */
                0x02, 0x04, 0x01, '1', '/', '2',        /* Chassis component: "1/2" */
                0x04, 0x04, 0x02, '2', '/', '3',        /* Port component: "2/3" */
                0x06, 0x02, 0x00, 0x78,                 /* TTL: 120 seconds */
                0x00, 0x00                              /* End Of LLDPDU */
        };
        static const uint8_t frame2[] = {
                /* Ethernet header */
                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,     /* Destination MAC */
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,     /* Source MAC */
                0x88, 0xcc,                             /* Ethertype */
                /* LLDP mandatory TLVs */
                0x02, 0x04, 0x01, '2', '/', '1',        /* Chassis component: "2/1" */
                0x04, 0x04, 0x02, '1', '/', '3',        /* Port component: "1/3" */
                0x06, 0x02, 0x00, 0x78,                 /* TTL: 120 seconds */
                0x00, 0x00                              /* End Of LLDPDU */
        };
        static const uint8_t frame3[] = {
                /* Ethernet header */
                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,     /* Destination MAC */
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,     /* Source MAC */
                0x88, 0xcc,                             /* Ethertype */
                /* LLDP mandatory TLVs */
                0x02, 0x05, 0x01, '2', '/', '1', '0',   /* Chassis component: "2/10" */
                0x04, 0x04, 0x02, '1', '/', '0',        /* Port component: "1/0" */
                0x06, 0x02, 0x00, 0x78,                 /* TTL: 120 seconds */
                0x00, 0x00                              /* End Of LLDPDU */
        };
        static const uint8_t frame4[] = {
                /* Ethernet header */
                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,     /* Destination MAC */
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,     /* Source MAC */
                0x88, 0xcc,                             /* Ethertype */
                /* LLDP mandatory TLVs */
                0x02, 0x05, 0x01, '2', '/', '1', '9',   /* Chassis component: "2/19" */
                0x04, 0x04, 0x02, '1', '/', '0',        /* Port component: "1/0" */
                0x06, 0x02, 0x00, 0x78,                 /* TTL: 120 seconds */
                0x00, 0x00                              /* End Of LLDPDU */
        };
        static const uint8_t frame5[] = {
                /* Ethernet header */
                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,     /* Destination MAC */
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,     /* Source MAC */
                0x88, 0xcc,                             /* Ethertype */
                /* LLDP mandatory TLVs */
                0x02, 0x04, 0x01, '1', '/', '2',        /* Chassis component: "1/2" */
                0x04, 0x05, 0x02, '2', '/', '1', '0',   /* Port component: "2/10" */
                0x06, 0x02, 0x00, 0x78,                 /* TTL: 120 seconds */
                0x00, 0x00                              /* End Of LLDPDU */
        };
        static const uint8_t frame6[] = {
                /* Ethernet header */
                0x01, 0x80, 0xc2, 0x00, 0x00, 0x03,     /* Destination MAC */
                0x01, 0x02, 0x03, 0x04, 0x05, 0x06,     /* Source MAC */
                0x88, 0xcc,                             /* Ethertype */
                /* LLDP mandatory TLVs */
                0x02, 0x04, 0x01, '1', '/', '2',        /* Chassis component: "1/2" */
                0x04, 0x05, 0x02, '2', '/', '3', '9',   /* Port component: "2/10" */
                0x06, 0x02, 0x00, 0x78,                 /* TTL: 120 seconds */
                0x00, 0x00                              /* End Of LLDPDU */
        };
        static const char* expected[] = {
                /* ordered pairs of Chassis+Port */
                "1/2", "2/10",
                "1/2", "2/3",
                "1/2", "2/39",
                "2/1", "1/3",
                "2/10", "1/0",
                "2/19", "1/0",
        };

        sd_lldp *lldp;
        sd_lldp_neighbor **neighbors;
        int i;
        uint8_t type;
        const void *data;
        size_t length, expected_length;
        uint16_t ttl;

        lldp_handler_calls = 0;
        FUNC0(FUNC9(&lldp, e, lldp_handler, NULL) == 0);

        FUNC0(FUNC12(test_fd[1], frame1, sizeof(frame1)) == sizeof(frame1));
        FUNC3(e, 0);
        FUNC0(FUNC12(test_fd[1], frame2, sizeof(frame2)) == sizeof(frame2));
        FUNC3(e, 0);
        FUNC0(FUNC12(test_fd[1], frame3, sizeof(frame3)) == sizeof(frame3));
        FUNC3(e, 0);
        FUNC0(FUNC12(test_fd[1], frame4, sizeof(frame4)) == sizeof(frame4));
        FUNC3(e, 0);
        FUNC0(FUNC12(test_fd[1], frame5, sizeof(frame5)) == sizeof(frame5));
        FUNC3(e, 0);
        FUNC0(FUNC12(test_fd[1], frame6, sizeof(frame6)) == sizeof(frame6));
        FUNC3(e, 0);
        FUNC0(lldp_handler_calls == 6);

        FUNC0(FUNC4(lldp, &neighbors) == 6);

        for (i = 0; i < 6; i++) {
                FUNC0(FUNC5(neighbors[i], &type, &data, &length) == 0);
                FUNC0(type == SD_LLDP_CHASSIS_SUBTYPE_CHASSIS_COMPONENT);
                expected_length = FUNC11(expected[2 * i]);
                FUNC0(length == expected_length);
                FUNC0(FUNC2(data, expected[2 * i], expected_length) == 0);

                FUNC0(FUNC6(neighbors[i], &type, &data, &length) == 0);
                FUNC0(type == SD_LLDP_PORT_SUBTYPE_PORT_COMPONENT);
                expected_length = FUNC11(expected[2 * i + 1]);
                FUNC0(length == expected_length);
                FUNC0(FUNC2(data, expected[2 * i + 1], expected_length) == 0);

                FUNC0(FUNC7(neighbors[i], &ttl) == 0);
                FUNC0(ttl == 120);
        }

        for (i = 0; i < 6; i++)
                FUNC8(neighbors[i]);
        FUNC1(neighbors);

        FUNC0(FUNC10(lldp) == 0);
}