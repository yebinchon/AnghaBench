
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Server ;


 int assert (int *) ;
 int server_flush_to_var (int *,int) ;
 int server_space_usage_message (int *,int *) ;
 int server_sync (int *) ;
 int server_vacuum (int *,int) ;

__attribute__((used)) static void server_full_flush(Server *s) {
        assert(s);

        (void) server_flush_to_var(s, 0);
        server_sync(s);
        server_vacuum(s, 0);

        server_space_usage_message(s, ((void*)0));
}
