
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USEC_INFINITY ;
 int fflush (int ) ;
 int printf (char*) ;
 int putchar (char) ;
 int read_one_char (int ,char*,int ,int*) ;
 int stdin ;
 int stdout ;

__attribute__((used)) static bool press_any_key(void) {
        char k = 0;
        bool need_nl = 1;

        printf("-- Press any key to proceed --");
        fflush(stdout);

        (void) read_one_char(stdin, &k, USEC_INFINITY, &need_nl);

        if (need_nl)
                putchar('\n');

        return k != 'q';
}
