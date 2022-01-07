
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int JournalFile ;


 int O_RDONLY ;
 int journal_file_close (int *) ;
 int journal_file_open (int,char const*,int ,int,int,int ,int,int *,int *,int *,int *,int **) ;
 int journal_file_verify (int *,char const*,int *,int *,int *,int) ;

__attribute__((used)) static int raw_verify(const char *fn, const char *verification_key) {
        JournalFile *f;
        int r;

        r = journal_file_open(-1, fn, O_RDONLY, 0666, 1, (uint64_t) -1, !!verification_key, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &f);
        if (r < 0)
                return r;

        r = journal_file_verify(f, verification_key, ((void*)0), ((void*)0), ((void*)0), 0);
        (void) journal_file_close(f);

        return r;
}
