
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* cap_t ;


 int assert_se (char*) ;
 int cap_free (char*) ;
 char* cap_get_proc () ;
 char* cap_to_text (char*,int *) ;
 int log_info (char*,char*) ;

__attribute__((used)) static void show_capabilities(void) {
        cap_t caps;
        char *text;

        caps = cap_get_proc();
        assert_se(caps);

        text = cap_to_text(caps, ((void*)0));
        assert_se(text);

        log_info("Capabilities:%s", text);
        cap_free(caps);
        cap_free(text);
}
