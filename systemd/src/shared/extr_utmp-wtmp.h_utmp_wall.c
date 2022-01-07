
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int utmp_wall(
                const char *message,
                const char *username,
                const char *origin_tty,
                bool (*match_tty)(const char *tty, void *userdata),
                void *userdata) {
        return 0;
}
