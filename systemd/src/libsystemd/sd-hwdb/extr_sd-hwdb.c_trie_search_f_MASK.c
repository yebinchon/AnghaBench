#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct trie_node_f {int /*<<< orphan*/  values_count; scalar_t__ prefix_off; } ;
struct linebuf {int dummy; } ;
struct TYPE_11__ {TYPE_1__* head; } ;
typedef  TYPE_2__ sd_hwdb ;
struct TYPE_10__ {int /*<<< orphan*/  nodes_root_off; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,char,char,char) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct linebuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct linebuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct linebuf*) ; 
 struct trie_node_f* FUNC6 (TYPE_2__*,struct trie_node_f const*,char const) ; 
 int FUNC7 (TYPE_2__*,struct trie_node_f const*,size_t,struct linebuf*,char const*) ; 
 struct trie_node_f* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct trie_node_f const*,size_t) ; 
 char* FUNC10 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int FUNC11(sd_hwdb *hwdb, const char *search) {
        struct linebuf buf;
        const struct trie_node_f *node;
        size_t i = 0;
        int err;

        FUNC4(&buf);

        node = FUNC8(hwdb, hwdb->head->nodes_root_off);
        while (node) {
                const struct trie_node_f *child;
                size_t p = 0;

                if (node->prefix_off) {
                        char c;

                        for (; (c = FUNC10(hwdb, node->prefix_off)[p]); p++) {
                                if (FUNC0(c, '*', '?', '['))
                                        return FUNC7(hwdb, node, p, &buf, search + i + p);
                                if (c != search[i + p])
                                        return 0;
                        }
                        i += p;
                }

                child = FUNC6(hwdb, node, '*');
                if (child) {
                        FUNC3(&buf, '*');
                        err = FUNC7(hwdb, child, 0, &buf, search + i);
                        if (err < 0)
                                return err;
                        FUNC5(&buf);
                }

                child = FUNC6(hwdb, node, '?');
                if (child) {
                        FUNC3(&buf, '?');
                        err = FUNC7(hwdb, child, 0, &buf, search + i);
                        if (err < 0)
                                return err;
                        FUNC5(&buf);
                }

                child = FUNC6(hwdb, node, '[');
                if (child) {
                        FUNC3(&buf, '[');
                        err = FUNC7(hwdb, child, 0, &buf, search + i);
                        if (err < 0)
                                return err;
                        FUNC5(&buf);
                }

                if (search[i] == '\0') {
                        size_t n;

                        for (n = 0; n < FUNC2(node->values_count); n++) {
                                err = FUNC1(hwdb, FUNC9(hwdb, node, n));
                                if (err < 0)
                                        return err;
                        }
                        return 0;
                }

                child = FUNC6(hwdb, node, search[i]);
                node = child;
                i++;
        }
        return 0;
}