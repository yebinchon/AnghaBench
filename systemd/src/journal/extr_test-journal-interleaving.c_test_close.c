
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JournalFile ;


 int journal_file_close (int *) ;

__attribute__((used)) static void test_close(JournalFile *f) {
        (void) journal_file_close (f);
}
