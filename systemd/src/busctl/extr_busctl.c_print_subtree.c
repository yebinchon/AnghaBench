
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPECIAL_GLYPH_TREE_BRANCH ;
 int SPECIAL_GLYPH_TREE_RIGHT ;
 int SPECIAL_GLYPH_TREE_SPACE ;
 int SPECIAL_GLYPH_TREE_VERTICAL ;
 int path_startswith (char*,char const*) ;
 int printf (char*,char const*,char*,char*) ;
 char* special_glyph (int ) ;
 int streq (char*,char const*) ;
 char* strjoina (char const*,char*) ;

__attribute__((used)) static void print_subtree(const char *prefix, const char *path, char **l) {
        const char *vertical, *space;
        char **n;



        for (;;) {
                if (!*l)
                        return;

                if (!streq(*l, path))
                        break;

                l++;
        }

        vertical = strjoina(prefix, special_glyph(SPECIAL_GLYPH_TREE_VERTICAL));
        space = strjoina(prefix, special_glyph(SPECIAL_GLYPH_TREE_SPACE));

        for (;;) {
                bool has_more = 0;

                if (!*l || !path_startswith(*l, path))
                        break;

                n = l + 1;
                for (;;) {
                        if (!*n || !path_startswith(*n, path))
                                break;

                        if (!path_startswith(*n, *l)) {
                                has_more = 1;
                                break;
                        }

                        n++;
                }

                printf("%s%s%s\n", prefix, special_glyph(has_more ? SPECIAL_GLYPH_TREE_BRANCH : SPECIAL_GLYPH_TREE_RIGHT), *l);

                print_subtree(has_more ? vertical : space, *l, l);
                l = n;
        }
}
