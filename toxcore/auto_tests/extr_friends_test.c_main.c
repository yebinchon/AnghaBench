
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int dht; } ;


 int FIRST_FLAG ;
 int MAP_ANONYMOUS ;
 int MAP_SHARED ;
 int MS_SYNC ;
 int Messenger_save (TYPE_1__*,int ) ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SECOND_FLAG ;
 int SIGKILL ;
 scalar_t__ atexit (int ) ;
 int c_sleep (int) ;
 int child_got_request ;
 int child_got_statuschange ;
 int child_id ;
 int child_pid ;
 int cleanup ;
 int cleanupMessenger (TYPE_1__*) ;
 int crypto_box_PUBLICKEYBYTES ;
 int do_tox (int ) ;
 int fork () ;
 int fputs (char*,int ) ;
 TYPE_1__* initMessenger () ;
 int kill (int ,int ) ;
 TYPE_1__* m ;
 int m_callback_friendmessage (TYPE_1__*,int ,int *) ;
 int m_callback_friendrequest (TYPE_1__*,int ,int *) ;
 int m_callback_statusmessage (TYPE_1__*,int ,int *) ;
 int m_sendmessage (TYPE_1__*,int ,int *,int ) ;
 int mmap (int *,int ,int,int,int,int ) ;
 int msync (int ,int ,int ) ;
 int parent_confirm_message ;
 int parent_confirm_status ;
 int parent_friend_request (int ) ;
 int parent_id ;
 int parent_wait_for_message (int ) ;
 int puts (char*) ;
 int request_flags ;
 int stderr ;
 int stdout ;
 int strlen (char*) ;
 int wait (int *) ;

int main(int argc, char *argv[])
{
    puts("=========== FRIENDS_TEST ===========");


    parent_id = mmap(((void*)0), crypto_box_PUBLICKEYBYTES, PROT_READ | PROT_WRITE,
                     MAP_SHARED | MAP_ANONYMOUS, -1, 0);
    child_id = mmap(((void*)0), crypto_box_PUBLICKEYBYTES, PROT_READ | PROT_WRITE,
                    MAP_SHARED | MAP_ANONYMOUS, -1, 0);

    fputs("friends_test: Starting test...\n", stdout);

    if ((child_pid = fork()) == 0) {

        int i = 0;
        char *message = "Y-yes Mr. Watson?";

        m = initMessenger();

        Messenger_save(m, child_id);
        msync(child_id, crypto_box_PUBLICKEYBYTES, MS_SYNC);

        m_callback_friendrequest(m, child_got_request, ((void*)0));
        m_callback_statusmessage(m, child_got_statuschange, ((void*)0));


        while (!(request_flags & FIRST_FLAG))
            do_tox(m->dht);


        while (!(request_flags & SECOND_FLAG))
            do_tox(m->dht);

        for (i = 0; i < 6; i++) {

            m_sendmessage(m, 0, (uint8_t *)message, strlen(message));
            do_tox(m->dht);
        }

        cleanupMessenger(m);

        return 0;
    }


    if (atexit(cleanup) != 0) {
        fputs("friends_test: atexit() failed!\nFailing build...\n", stderr);
        kill(child_pid, SIGKILL);
        return -1;
    }

    m = initMessenger();

    msync(parent_id, crypto_box_PUBLICKEYBYTES, MS_SYNC);
    m_callback_statusmessage(m, parent_confirm_status, ((void*)0));
    m_callback_friendmessage(m, parent_confirm_message, ((void*)0));


    c_sleep(50);

    Messenger_save(m, parent_id);

    if (parent_friend_request(m->dht) == -1)
        return -1;

    if (parent_wait_for_message(m->dht) == -1)
        return -1;

    wait(((void*)0));
    fputs("friends_test: Build passed!\n", stdout);
    return 0;
}
