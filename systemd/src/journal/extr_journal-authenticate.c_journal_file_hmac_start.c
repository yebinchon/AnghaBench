
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int key ;
struct TYPE_4__ {int hmac_running; int hmac; int fsprg_state; int seal; } ;
typedef TYPE_1__ JournalFile ;


 int FSPRG_GetKey (int ,int *,int,int ) ;
 int assert (TYPE_1__*) ;
 int gcry_md_reset (int ) ;
 int gcry_md_setkey (int ,int *,int) ;

int journal_file_hmac_start(JournalFile *f) {
        uint8_t key[256 / 8];
        assert(f);

        if (!f->seal)
                return 0;

        if (f->hmac_running)
                return 0;


        gcry_md_reset(f->hmac);
        FSPRG_GetKey(f->fsprg_state, key, sizeof(key), 0);
        gcry_md_setkey(f->hmac, key, sizeof(key));

        f->hmac_running = 1;

        return 0;
}
