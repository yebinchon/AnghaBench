
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ JSON_OFF ;
 scalar_t__ arg_json ;
 int message_dump ;
 int message_json ;
 int monitor (int,char**,int ) ;

__attribute__((used)) static int verb_monitor(int argc, char **argv, void *userdata) {
        return monitor(argc, argv, arg_json != JSON_OFF ? message_json : message_dump);
}
