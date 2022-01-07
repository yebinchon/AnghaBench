
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int ce_flags; char* name; int sha1; } ;


 int CE_INTENT_TO_ADD ;
 scalar_t__ ce_stage (struct cache_entry*) ;
 int fprintf (int ,char*,...) ;
 int seaf_warning (char*,char const*,char const*) ;
 char* sha1_to_hex (int ) ;
 int stderr ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int verify_cache(struct cache_entry **cache,
                        int entries)
{
    int i, funny;


    funny = 0;
    for (i = 0; i < entries; i++) {
        struct cache_entry *ce = cache[i];
        if (ce_stage(ce) || (ce->ce_flags & CE_INTENT_TO_ADD)) {
            if (10 < ++funny) {

                break;
            }
        }
    }
    if (funny)
        return -1;





    funny = 0;
    for (i = 0; i < entries - 1; i++) {




        const char *this_name = cache[i]->name;
        const char *next_name = cache[i+1]->name;
        int this_len = strlen(this_name);
        if (this_len < strlen(next_name) &&
            strncmp(this_name, next_name, this_len) == 0 &&
            next_name[this_len] == '/') {
            if (10 < ++funny) {
                fprintf(stderr, "...\n");
                break;
            }
            seaf_warning("You have both %s and %s\n",
                      this_name, next_name);
        }
    }
    if (funny)
        return -1;
    return 0;
}
