
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int gcry_mpi_t ;


 int FSPRG_RECOMMENDED_SEEDLEN ;
 int GCRY_STRONG_RANDOM ;
 int RND_GEN_P ;
 int RND_GEN_Q ;
 int VALIDATE_SECPAR (unsigned int) ;
 int assert (int) ;
 int gcry_mpi_get_nbits (int ) ;
 int gcry_mpi_mul (int ,int ,int ) ;
 int gcry_mpi_new (int ) ;
 int gcry_mpi_release (int ) ;
 int gcry_randomize (int *,int,int ) ;
 int genprime3mod4 (int,void const*,size_t,int ) ;
 int initialize_libgcrypt (int) ;
 int mpi_export (void*,int,int ) ;
 int store_secpar (void*,int) ;

void FSPRG_GenMK(void *msk, void *mpk, const void *seed, size_t seedlen, unsigned _secpar) {
        uint8_t iseed[FSPRG_RECOMMENDED_SEEDLEN];
        gcry_mpi_t n, p, q;
        uint16_t secpar;

        VALIDATE_SECPAR(_secpar);
        secpar = _secpar;

        initialize_libgcrypt(0);

        if (!seed) {
                gcry_randomize(iseed, FSPRG_RECOMMENDED_SEEDLEN, GCRY_STRONG_RANDOM);
                seed = iseed;
                seedlen = FSPRG_RECOMMENDED_SEEDLEN;
        }

        p = genprime3mod4(secpar / 2, seed, seedlen, RND_GEN_P);
        q = genprime3mod4(secpar / 2, seed, seedlen, RND_GEN_Q);

        if (msk) {
                store_secpar(msk + 0, secpar);
                mpi_export(msk + 2 + 0 * (secpar / 2) / 8, (secpar / 2) / 8, p);
                mpi_export(msk + 2 + 1 * (secpar / 2) / 8, (secpar / 2) / 8, q);
        }

        if (mpk) {
                n = gcry_mpi_new(0);
                gcry_mpi_mul(n, p, q);
                assert(gcry_mpi_get_nbits(n) == secpar);

                store_secpar(mpk + 0, secpar);
                mpi_export(mpk + 2, secpar / 8, n);

                gcry_mpi_release(n);
        }

        gcry_mpi_release(p);
        gcry_mpi_release(q);
}
