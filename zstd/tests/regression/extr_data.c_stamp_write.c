
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash ;
typedef int data_t ;
typedef int XXH64_canonical_t ;
typedef int FILE ;


 int EIO ;
 int ENOMEM ;
 int XXH64_canonicalFromHash (int *,int ) ;
 char* cat3 (char const*,char*,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int fwrite (int *,int,int,int *) ;
 int kStampName ;
 int stamp_hash (int const* const*) ;
 int stderr ;
 int unlink (char*) ;

__attribute__((used)) static int
stamp_write(char const* dir, data_t const* const* data, int const data_err) {
    char* stamp = cat3(dir, "/", kStampName);
    FILE* stampfile = ((void*)0);
    int err = EIO;

    if (stamp == ((void*)0))
        return ENOMEM;

    if (data_err != 0) {
        err = data_err;
        goto out;
    }
    XXH64_canonical_t hash;

    XXH64_canonicalFromHash(&hash, stamp_hash(data));

    stampfile = fopen(stamp, "wb");
    if (stampfile == ((void*)0))
        goto out;
    if (fwrite(&hash, sizeof(hash), 1, stampfile) != 1)
        goto out;
    err = 0;
    fprintf(stderr, "stamped new data cache\n");
out:
    if (err != 0)

        unlink(stamp);
    free(stamp);
    if (stampfile != ((void*)0))
        fclose(stampfile);
    return err;
}
