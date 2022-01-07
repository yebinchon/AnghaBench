
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;
typedef int pthread_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LOG_INFO ;
 scalar_t__ PTR_TO_INT (void*) ;
 int client1 ;
 int client2 ;
 int log_info (char*) ;
 int log_tests_skipped (char*) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,void**) ;
 int server (int *) ;
 int server_init (int **) ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        pthread_t c1, c2;
        sd_bus *bus;
        void *p;
        int q, r;

        test_setup_logging(LOG_INFO);

        r = server_init(&bus);
        if (r < 0)
                return log_tests_skipped("Failed to connect to bus");

        log_info("Initialized...");

        r = pthread_create(&c1, ((void*)0), client1, bus);
        if (r != 0)
                return EXIT_FAILURE;

        r = pthread_create(&c2, ((void*)0), client2, bus);
        if (r != 0)
                return EXIT_FAILURE;

        r = server(bus);

        q = pthread_join(c1, &p);
        if (q != 0)
                return EXIT_FAILURE;
        if (PTR_TO_INT(p) < 0)
                return EXIT_FAILURE;

        q = pthread_join(c2, &p);
        if (q != 0)
                return EXIT_FAILURE;
        if (PTR_TO_INT(p) < 0)
                return EXIT_FAILURE;

        if (r < 0)
                return EXIT_FAILURE;

        return EXIT_SUCCESS;
}
