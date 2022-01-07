
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int cookie; int reply_callbacks; } ;
typedef TYPE_1__ sd_bus ;


 scalar_t__ COOKIE_CYCLED ;
 int EBUSY ;
 scalar_t__ FLAGS_SET (int ,scalar_t__) ;
 int assert (TYPE_1__*) ;
 int cookie_inc (int ) ;
 int ordered_hashmap_contains (int ,int *) ;

__attribute__((used)) static int next_cookie(sd_bus *b) {
        uint64_t new_cookie;

        assert(b);

        new_cookie = cookie_inc(b->cookie);



        if (FLAGS_SET(new_cookie, COOKIE_CYCLED)) {
                uint32_t i;


                for (i = 0; i < COOKIE_CYCLED; i++) {
                        if (!ordered_hashmap_contains(b->reply_callbacks, &new_cookie))
                                goto good;

                        new_cookie = cookie_inc(new_cookie);
                }


                return -EBUSY;
        }

good:
        b->cookie = new_cookie;
        return 0;
}
