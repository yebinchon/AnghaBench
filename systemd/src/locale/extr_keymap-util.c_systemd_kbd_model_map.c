
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* SYSTEMD_KBD_MODEL_MAP ;
 char* getenv (char*) ;

__attribute__((used)) static const char* systemd_kbd_model_map(void) {
        const char* s;

        s = getenv("SYSTEMD_KBD_MODEL_MAP");
        if (s)
                return s;

        return SYSTEMD_KBD_MODEL_MAP;
}
