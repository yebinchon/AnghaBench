
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VarlinkReplyFlags ;
typedef int Varlink ;
typedef int JsonVariant ;


 int JSON_FORMAT_NEWLINE ;
 int JSON_FORMAT_PRETTY ;
 int json_variant_dump (int *,int,int ,int *) ;
 int null ;

__attribute__((used)) static int reply_callback(Varlink *v, JsonVariant *p, const char *error_id, VarlinkReplyFlags flags, void *userdata) {
        json_variant_dump(p, JSON_FORMAT_NEWLINE|JSON_FORMAT_PRETTY, null, ((void*)0));
        return 0;
}
