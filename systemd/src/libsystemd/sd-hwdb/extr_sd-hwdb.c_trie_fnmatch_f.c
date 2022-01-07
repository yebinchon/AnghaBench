
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie_node_f {size_t children_count; int values_count; int prefix_off; } ;
struct trie_child_entry_f {int child_off; int c; } ;
struct linebuf {int dummy; } ;
typedef int sd_hwdb ;


 scalar_t__ fnmatch (int ,char const*,int ) ;
 int hwdb_add_property (int *,int ) ;
 size_t le64toh (int ) ;
 int linebuf_add (struct linebuf*,char const*,size_t) ;
 int linebuf_add_char (struct linebuf*,int ) ;
 int linebuf_get (struct linebuf*) ;
 int linebuf_rem (struct linebuf*,size_t) ;
 int linebuf_rem_char (struct linebuf*) ;
 size_t strlen (char const*) ;
 struct trie_child_entry_f* trie_node_child (int *,struct trie_node_f const*,size_t) ;
 struct trie_node_f* trie_node_from_off (int *,int ) ;
 int trie_node_value (int *,struct trie_node_f const*,size_t) ;
 char* trie_string (int *,int ) ;

__attribute__((used)) static int trie_fnmatch_f(sd_hwdb *hwdb, const struct trie_node_f *node, size_t p,
                          struct linebuf *buf, const char *search) {
        size_t len;
        size_t i;
        const char *prefix;
        int err;

        prefix = trie_string(hwdb, node->prefix_off);
        len = strlen(prefix + p);
        linebuf_add(buf, prefix + p, len);

        for (i = 0; i < node->children_count; i++) {
                const struct trie_child_entry_f *child = trie_node_child(hwdb, node, i);

                linebuf_add_char(buf, child->c);
                err = trie_fnmatch_f(hwdb, trie_node_from_off(hwdb, child->child_off), 0, buf, search);
                if (err < 0)
                        return err;
                linebuf_rem_char(buf);
        }

        if (le64toh(node->values_count) && fnmatch(linebuf_get(buf), search, 0) == 0)
                for (i = 0; i < le64toh(node->values_count); i++) {
                        err = hwdb_add_property(hwdb, trie_node_value(hwdb, node, i));
                        if (err < 0)
                                return err;
                }

        linebuf_rem(buf, len);
        return 0;
}
