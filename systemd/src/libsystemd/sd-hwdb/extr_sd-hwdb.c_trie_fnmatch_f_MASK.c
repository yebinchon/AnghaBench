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
struct trie_node_f {size_t children_count; int /*<<< orphan*/  values_count; int /*<<< orphan*/  prefix_off; } ;
struct trie_child_entry_f {int /*<<< orphan*/  child_off; int /*<<< orphan*/  c; } ;
struct linebuf {int dummy; } ;
typedef  int /*<<< orphan*/  sd_hwdb ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct linebuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct linebuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct linebuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct linebuf*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct linebuf*) ; 
 size_t FUNC8 (char const*) ; 
 struct trie_child_entry_f* FUNC9 (int /*<<< orphan*/ *,struct trie_node_f const*,size_t) ; 
 struct trie_node_f* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct trie_node_f const*,size_t) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(sd_hwdb *hwdb, const struct trie_node_f *node, size_t p,
                          struct linebuf *buf, const char *search) {
        size_t len;
        size_t i;
        const char *prefix;
        int err;

        prefix = FUNC12(hwdb, node->prefix_off);
        len = FUNC8(prefix + p);
        FUNC3(buf, prefix + p, len);

        for (i = 0; i < node->children_count; i++) {
                const struct trie_child_entry_f *child = FUNC9(hwdb, node, i);

                FUNC4(buf, child->c);
                err = FUNC13(hwdb, FUNC10(hwdb, child->child_off), 0, buf, search);
                if (err < 0)
                        return err;
                FUNC7(buf);
        }

        if (FUNC2(node->values_count) && FUNC0(FUNC5(buf), search, 0) == 0)
                for (i = 0; i < FUNC2(node->values_count); i++) {
                        err = FUNC1(hwdb, FUNC11(hwdb, node, i));
                        if (err < 0)
                                return err;
                }

        FUNC6(buf, len);
        return 0;
}