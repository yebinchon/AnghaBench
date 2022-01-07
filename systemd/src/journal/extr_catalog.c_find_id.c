
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sd_id128_t ;
typedef int comparison_fn_t ;
struct TYPE_6__ {int catalog_item_size; int n_items; int header_size; } ;
struct TYPE_5__ {char* language; int offset; int id; } ;
typedef TYPE_1__ CatalogItem ;
typedef TYPE_2__ CatalogHeader ;


 int LC_MESSAGES ;
 int STR_IN_SET (char const*,char*,char*) ;
 TYPE_1__* bsearch (TYPE_1__*,int const*,int,int,int ) ;
 scalar_t__ catalog_compare_func ;
 int isempty (char const*) ;
 int le64toh (int ) ;
 int log_debug (char*,int,char const*) ;
 char* setlocale (int ,int *) ;
 char* strchr (char*,char) ;
 size_t strcspn (char const*,char*) ;
 int strncpy (char*,char const*,size_t) ;
 int zero (char*) ;

__attribute__((used)) static const char *find_id(void *p, sd_id128_t id) {
        CatalogItem *f = ((void*)0), key = { .id = id };
        const CatalogHeader *h = p;
        const char *loc;

        loc = setlocale(LC_MESSAGES, ((void*)0));
        if (!isempty(loc) && !STR_IN_SET(loc, "C", "POSIX")) {
                size_t len;

                len = strcspn(loc, ".@");
                if (len > sizeof(key.language) - 1)
                        log_debug("LC_MESSAGES value too long, ignoring: \"%.*s\"", (int) len, loc);
                else {
                        strncpy(key.language, loc, len);
                        key.language[len] = '\0';

                        f = bsearch(&key,
                                    (const uint8_t*) p + le64toh(h->header_size),
                                    le64toh(h->n_items),
                                    le64toh(h->catalog_item_size),
                                    (comparison_fn_t) catalog_compare_func);
                        if (!f) {
                                char *e;

                                e = strchr(key.language, '_');
                                if (e) {
                                        *e = 0;
                                        f = bsearch(&key,
                                                    (const uint8_t*) p + le64toh(h->header_size),
                                                    le64toh(h->n_items),
                                                    le64toh(h->catalog_item_size),
                                                    (comparison_fn_t) catalog_compare_func);
                                }
                        }
                }
        }

        if (!f) {
                zero(key.language);
                f = bsearch(&key,
                            (const uint8_t*) p + le64toh(h->header_size),
                            le64toh(h->n_items),
                            le64toh(h->catalog_item_size),
                            (comparison_fn_t) catalog_compare_func);
        }

        if (!f)
                return ((void*)0);

        return (const char*) p +
                le64toh(h->header_size) +
                le64toh(h->n_items) * le64toh(h->catalog_item_size) +
                le64toh(f->offset);
}
