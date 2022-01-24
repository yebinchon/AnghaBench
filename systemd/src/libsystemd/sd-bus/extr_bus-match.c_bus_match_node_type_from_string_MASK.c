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
typedef  enum bus_match_node_type { ____Placeholder_bus_match_node_type } bus_match_node_type ;

/* Variables and functions */
 int BUS_MATCH_ARG ; 
 int BUS_MATCH_ARG_HAS ; 
 int BUS_MATCH_ARG_HAS_LAST ; 
 int BUS_MATCH_ARG_LAST ; 
 int BUS_MATCH_ARG_NAMESPACE ; 
 int BUS_MATCH_ARG_NAMESPACE_LAST ; 
 int BUS_MATCH_ARG_PATH ; 
 int BUS_MATCH_ARG_PATH_LAST ; 
 int BUS_MATCH_DESTINATION ; 
 int BUS_MATCH_INTERFACE ; 
 int BUS_MATCH_MEMBER ; 
 int BUS_MATCH_MESSAGE_TYPE ; 
 int BUS_MATCH_PATH ; 
 int BUS_MATCH_PATH_NAMESPACE ; 
 int BUS_MATCH_SENDER ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int FUNC2 (char const) ; 

enum bus_match_node_type FUNC3(const char *k, size_t n) {
        FUNC0(k);

        if (n == 4 && FUNC1(k, "type"))
                return BUS_MATCH_MESSAGE_TYPE;
        if (n == 6 && FUNC1(k, "sender"))
                return BUS_MATCH_SENDER;
        if (n == 11 && FUNC1(k, "destination"))
                return BUS_MATCH_DESTINATION;
        if (n == 9 && FUNC1(k, "interface"))
                return BUS_MATCH_INTERFACE;
        if (n == 6 && FUNC1(k, "member"))
                return BUS_MATCH_MEMBER;
        if (n == 4 && FUNC1(k, "path"))
                return BUS_MATCH_PATH;
        if (n == 14 && FUNC1(k, "path_namespace"))
                return BUS_MATCH_PATH_NAMESPACE;

        if (n == 4 && FUNC1(k, "arg")) {
                int j;

                j = FUNC2(k[3]);
                if (j < 0)
                        return -EINVAL;

                return BUS_MATCH_ARG + j;
        }

        if (n == 5 && FUNC1(k, "arg")) {
                int a, b;
                enum bus_match_node_type t;

                a = FUNC2(k[3]);
                b = FUNC2(k[4]);
                if (a <= 0 || b < 0)
                        return -EINVAL;

                t = BUS_MATCH_ARG + a * 10 + b;
                if (t > BUS_MATCH_ARG_LAST)
                        return -EINVAL;

                return t;
        }

        if (n == 8 && FUNC1(k, "arg") && FUNC1(k + 4, "path")) {
                int j;

                j = FUNC2(k[3]);
                if (j < 0)
                        return -EINVAL;

                return BUS_MATCH_ARG_PATH + j;
        }

        if (n == 9 && FUNC1(k, "arg") && FUNC1(k + 5, "path")) {
                enum bus_match_node_type t;
                int a, b;

                a = FUNC2(k[3]);
                b = FUNC2(k[4]);
                if (a <= 0 || b < 0)
                        return -EINVAL;

                t = BUS_MATCH_ARG_PATH + a * 10 + b;
                if (t > BUS_MATCH_ARG_PATH_LAST)
                        return -EINVAL;

                return t;
        }

        if (n == 13 && FUNC1(k, "arg") && FUNC1(k + 4, "namespace")) {
                int j;

                j = FUNC2(k[3]);
                if (j < 0)
                        return -EINVAL;

                return BUS_MATCH_ARG_NAMESPACE + j;
        }

        if (n == 14 && FUNC1(k, "arg") && FUNC1(k + 5, "namespace")) {
                enum bus_match_node_type t;
                int a, b;

                a = FUNC2(k[3]);
                b = FUNC2(k[4]);
                if (a <= 0 || b < 0)
                        return -EINVAL;

                t = BUS_MATCH_ARG_NAMESPACE + a * 10 + b;
                if (t > BUS_MATCH_ARG_NAMESPACE_LAST)
                        return -EINVAL;

                return t;
        }

        if (n == 7 && FUNC1(k, "arg") && FUNC1(k + 4, "has")) {
                int j;

                j = FUNC2(k[3]);
                if (j < 0)
                        return -EINVAL;

                return BUS_MATCH_ARG_HAS + j;
        }

        if (n == 8 && FUNC1(k, "arg") && FUNC1(k + 5, "has")) {
                enum bus_match_node_type t;
                int a, b;

                a = FUNC2(k[3]);
                b = FUNC2(k[4]);
                if (a <= 0 || b < 0)
                        return -EINVAL;

                t = BUS_MATCH_ARG_HAS + a * 10 + b;
                if (t > BUS_MATCH_ARG_HAS_LAST)
                        return -EINVAL;

                return t;
        }

        return -EINVAL;
}