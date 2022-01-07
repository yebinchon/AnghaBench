
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINTN ;
struct TYPE_4__ {scalar_t__ tries_left; scalar_t__ tries_done; int id; } ;
typedef int INTN ;
typedef TYPE_1__ ConfigEntry ;


 int str_verscmp (int ,int ) ;

__attribute__((used)) static INTN config_entry_compare(ConfigEntry *a, ConfigEntry *b) {
        INTN r;


        if (a->tries_left != 0 && b->tries_left == 0)
                return -1;
        if (a->tries_left == 0 && b->tries_left != 0)
                return 1;

        r = str_verscmp(a->id, b->id);
        if (r != 0)
                return r;

        if (a->tries_left == (UINTN) -1 ||
            b->tries_left == (UINTN) -1)
                return 0;


        if (a->tries_left > b->tries_left)
                return -1;
        if (a->tries_left < b->tries_left)
                return 1;


        if (a->tries_done < b->tries_done)
                return -1;
        if (a->tries_done > b->tries_done)
                return 1;

        return 0;
}
