
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gcry_error_t ;
struct TYPE_3__ {int hmac; int seal; } ;
typedef TYPE_1__ JournalFile ;


 int EOPNOTSUPP ;
 int GCRY_MD_FLAG_HMAC ;
 int GCRY_MD_SHA256 ;
 scalar_t__ gcry_md_open (int *,int ,int ) ;
 int initialize_libgcrypt (int) ;

int journal_file_hmac_setup(JournalFile *f) {
        gcry_error_t e;

        if (!f->seal)
                return 0;

        initialize_libgcrypt(1);

        e = gcry_md_open(&f->hmac, GCRY_MD_SHA256, GCRY_MD_FLAG_HMAC);
        if (e != 0)
                return -EOPNOTSUPP;

        return 0;
}
