
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ackmate_dir_filter; } ;


 TYPE_1__ opts ;
 int pcre_exec (int *,int *,char const*,int ,int ,int ,int *,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int ackmate_dir_match(const char *dir_name) {
    if (opts.ackmate_dir_filter == ((void*)0)) {
        return 0;
    }

    return pcre_exec(opts.ackmate_dir_filter, ((void*)0), dir_name, strlen(dir_name), 0, 0, ((void*)0), 0);
}
