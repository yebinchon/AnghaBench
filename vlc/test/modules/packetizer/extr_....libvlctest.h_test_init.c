
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;


 int SIGALRM ;
 int alarm (unsigned int) ;
 int atoi (char*) ;
 char* getenv (char*) ;
 int on_timeout ;
 int setenv (char*,char*,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int test_default_sample ;

__attribute__((used)) static inline void test_init (void)
{
    (void)test_default_sample;



    unsigned alarm_timeout = 10;


    char *alarm_timeout_str = getenv("VLC_TEST_TIMEOUT");
    if (alarm_timeout_str)
    {
        int val = atoi(alarm_timeout_str);
        if (val <= 0)
            alarm_timeout = 0;
        else
            alarm_timeout = val;
    }
    if (alarm_timeout != 0)
    {
        struct sigaction sig = {
            .sa_handler = on_timeout,
        };
        sigaction(SIGALRM, &sig, ((void*)0));
        alarm (alarm_timeout);
    }

    setenv( "VLC_PLUGIN_PATH", "../modules", 1 );
}
