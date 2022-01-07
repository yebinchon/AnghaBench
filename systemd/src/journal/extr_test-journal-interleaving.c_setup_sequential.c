
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JournalFile ;


 int append_number (int *,int,int *) ;
 int test_close (int *) ;
 int * test_open (char*) ;

__attribute__((used)) static void setup_sequential(void) {
        JournalFile *one, *two;
        one = test_open("one.journal");
        two = test_open("two.journal");
        append_number(one, 1, ((void*)0));
        append_number(one, 2, ((void*)0));
        append_number(two, 3, ((void*)0));
        append_number(two, 4, ((void*)0));
        test_close(one);
        test_close(two);
}
