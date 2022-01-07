
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* basename (char const*) ;
 scalar_t__ isempty (char const*) ;
 int memcpy (char*,char const*,size_t) ;
 int rename_process (char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void rename_process_from_path(const char *path) {
        char process_name[11];
        const char *p;
        size_t l;




        p = basename(path);
        if (isempty(p)) {
                rename_process("(...)");
                return;
        }

        l = strlen(p);
        if (l > 8) {



                p = p + l - 8;
                l = 8;
        }

        process_name[0] = '(';
        memcpy(process_name+1, p, l);
        process_name[1+l] = ')';
        process_name[1+l+1] = 0;

        rename_process(process_name);
}
