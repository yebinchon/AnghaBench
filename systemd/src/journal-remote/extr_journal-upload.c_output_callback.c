
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ answer; } ;
typedef TYPE_1__ Uploader ;


 int assert (TYPE_1__*) ;
 int log_debug (char*,size_t,int,char*) ;
 int log_warning (char*,size_t) ;
 scalar_t__ strndup (char*,size_t) ;

__attribute__((used)) static size_t output_callback(char *buf,
                              size_t size,
                              size_t nmemb,
                              void *userp) {
        Uploader *u = userp;

        assert(u);

        log_debug("The server answers (%zu bytes): %.*s",
                  size*nmemb, (int)(size*nmemb), buf);

        if (nmemb && !u->answer) {
                u->answer = strndup(buf, size*nmemb);
                if (!u->answer)
                        log_warning("Failed to store server answer (%zu bytes): out of memory", size*nmemb);
        }

        return size * nmemb;
}
