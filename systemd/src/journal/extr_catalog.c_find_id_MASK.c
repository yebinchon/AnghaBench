#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sd_id128_t ;
typedef  int /*<<< orphan*/  comparison_fn_t ;
struct TYPE_6__ {int /*<<< orphan*/  catalog_item_size; int /*<<< orphan*/  n_items; int /*<<< orphan*/  header_size; } ;
struct TYPE_5__ {char* language; int /*<<< orphan*/  offset; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ CatalogItem ;
typedef  TYPE_2__ CatalogHeader ;

/* Variables and functions */
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,char*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ catalog_compare_func ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,char) ; 
 size_t FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static const char *FUNC10(void *p, sd_id128_t id) {
        CatalogItem *f = NULL, key = { .id = id };
        const CatalogHeader *h = p;
        const char *loc;

        loc = FUNC5(LC_MESSAGES, NULL);
        if (!FUNC2(loc) && !FUNC0(loc, "C", "POSIX")) {
                size_t len;

                len = FUNC7(loc, ".@");
                if (len > sizeof(key.language) - 1)
                        FUNC4("LC_MESSAGES value too long, ignoring: \"%.*s\"", (int) len, loc);
                else {
                        FUNC8(key.language, loc, len);
                        key.language[len] = '\0';

                        f = FUNC1(&key,
                                    (const uint8_t*) p + FUNC3(h->header_size),
                                    FUNC3(h->n_items),
                                    FUNC3(h->catalog_item_size),
                                    (comparison_fn_t) catalog_compare_func);
                        if (!f) {
                                char *e;

                                e = FUNC6(key.language, '_');
                                if (e) {
                                        *e = 0;
                                        f = FUNC1(&key,
                                                    (const uint8_t*) p + FUNC3(h->header_size),
                                                    FUNC3(h->n_items),
                                                    FUNC3(h->catalog_item_size),
                                                    (comparison_fn_t) catalog_compare_func);
                                }
                        }
                }
        }

        if (!f) {
                FUNC9(key.language);
                f = FUNC1(&key,
                            (const uint8_t*) p + FUNC3(h->header_size),
                            FUNC3(h->n_items),
                            FUNC3(h->catalog_item_size),
                            (comparison_fn_t) catalog_compare_func);
        }

        if (!f)
                return NULL;

        return (const char*) p +
                FUNC3(h->header_size) +
                FUNC3(h->n_items) * FUNC3(h->catalog_item_size) +
                FUNC3(f->offset);
}