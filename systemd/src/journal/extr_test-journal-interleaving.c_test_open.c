
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int JournalFile ;


 int O_CREAT ;
 int O_RDWR ;
 int assert_ret (int ) ;
 int journal_file_open (int,char const*,int,int,int,int ,int,int *,int *,int *,int *,int **) ;

__attribute__((used)) static JournalFile *test_open(const char *name) {
        JournalFile *f;
        assert_ret(journal_file_open(-1, name, O_RDWR|O_CREAT, 0644, 1, (uint64_t) -1, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &f));
        return f;
}
